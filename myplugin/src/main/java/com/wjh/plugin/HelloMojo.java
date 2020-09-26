package com.wjh.plugin;

import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugin.MojoFailureException;

/**
 * Hello Maven plugin
 *
 * @goal hello
 * @author wjh
 * @date 2020/9/26 18:12
 */
public class HelloMojo extends AbstractMojo {

    public void execute() throws MojoExecutionException, MojoFailureException {
        System.out.println("Hello Mojo");
    }
}
