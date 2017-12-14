import java.io.File;

/**
 * Project: odex2dex
 * Created by lucky on 2017/12/14.
 */
public class Main {
    public static void main(String[] args) throws Exception {
        String proPath = System.getProperty("user.dir");
        System.out.println(proPath);
        String libPath = proPath + "/src/lib/";
        String outPath = proPath + "/src/out";
        File outFile = new File(outPath);
        if (!outFile.exists()) {
            outFile.mkdirs();
        }
        System.out.println(outFile.getAbsolutePath());

        System.out.println("java -jar " + libPath + "baksmali-2.0.2.jar -x " + libPath + "classes.odex -d " +
                libPath + "/framework" + " -o " + outFile.getAbsolutePath());

        Process exec = Runtime.getRuntime().exec("java -jar " + libPath + "baksmali-2.0.2.jar -x " + libPath + "classes.odex -d " + libPath + "/framework" + " -o " + outFile.getAbsolutePath());
        exec.waitFor();
        System.out.println(exec.exitValue());
        System.out.println(exec.getErrorStream());

        if (!isEmptyDir(outFile)) {
            System.out.println("smali to dex");
            exec = Runtime.getRuntime().exec("java -jar " + libPath + "smali-2.0.2.jar " + outFile.getAbsolutePath() +
                    " -o " + proPath + "/src/classes.dex");
            exec.waitFor();
            System.out.println(exec.exitValue());
            System.out.println(exec.getErrorStream());
        }
    }

    /**
     * 文件夹是否为空
     * <p>
     * 空返回true，否则返回false
     *
     * @param file
     * @return
     */
    public static boolean isEmptyDir(File file) {
        if (!file.exists())
            return true;
        return file.list().length == 0;
    }
}
