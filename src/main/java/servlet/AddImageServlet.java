package servlet;

import manager.ImageManager;
import model.Admin;
import model.Image;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

@MultipartConfig
@WebServlet(urlPatterns = "/addImage")
public class AddImageServlet extends HttpServlet {
    private ImageManager imageManager = new ImageManager();

    private static final String IMAGE_UPLOAD_DIR = "D:\\Java\\gitHub\\BarberShop\\images\\";

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            Part filePart = req.getPart("image");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            fileName = System.currentTimeMillis() + "_" + System.nanoTime() + fileName;
            filePart.write(IMAGE_UPLOAD_DIR + fileName);
            Image image = Image.builder()
                    .imgPath(fileName)
                    .build();

            imageManager.add(image);
            List<Image> allImage = imageManager.getAllImage();
            req.setAttribute("allImage" ,allImage);
            resp.sendRedirect("/adminHome");

    }
}
