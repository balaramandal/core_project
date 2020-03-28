import java.io.*;
import java.util.*;

public class OracleTestDemo {

public static void main(String args[]) {        
    try {
        File input = new File("E://14_12_2017__65000_21StockReport.csv");
        File output = new File("E://Oracle.txt");
        Scanner sc = new Scanner(input);
        PrintWriter printer = new PrintWriter(output);
        while(sc.hasNextLine()) {
            String s = sc.nextLine();
            printer.write(s);
        }
    }
    catch(FileNotFoundException e) {
        System.err.println("File not found. Please scan in new file.");
    }
}
}