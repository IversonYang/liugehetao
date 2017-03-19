package com.ys.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;

 /**        
 * Title: VaildateCodeUtil    
 * Description: 生成验证码图片
 * @author IversonYang      
 * @created 2017年3月19日   
 */
public class VaildateCodeUtil {

	public static BufferedImage getVaildateCode(String content){
		//创建一个画板
		int width = 120 , height = 48;
		BufferedImage buf = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
		//绘制工具
		Graphics2D g = buf.createGraphics();
		g.setColor(getRandomColor(1, 100));
		g.fillRect(0, 0, width, height);
		
		//设置干扰线
		Random random = new Random();
		for (int i = 0; i < 100; i++) {
			int x1 = random.nextInt(120);
			int y1 = random.nextInt(48);
			int x2 = random.nextInt(120);
			int y2 = random.nextInt(48);
			g.setColor(getRandomColor(101, 200)); 
			g.drawLine(x1, y1, x2, y2);
		}
				
		//设置文字
		Font font = new Font("楷体",Font.BOLD, 25);
		g.setFont(font);
		//图片内文字格式
		g.setColor(getRandomColor(201, 255));
		g.drawString(content, 10, 33);
		
		g.dispose();
		
		return buf;
	}
	
	//设置随机颜色
	public static Color getRandomColor(int from,int to){
		Random random = new Random();
		int r = from + random.nextInt(to-from);
		int g = from + random.nextInt(to-from);
		int b = from + random.nextInt(to-from);
		return new Color(r,g,b);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BufferedImage buf = getVaildateCode("凯子男神");
		try {
			ImageIO.write(buf, "png", new File("D:/a.png"));
			System.out.println("图片生成完成");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
