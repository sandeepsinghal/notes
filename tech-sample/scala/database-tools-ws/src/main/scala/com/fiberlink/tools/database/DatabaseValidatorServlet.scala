package com.fiberlink.tools.database

import org.scalatra._
import scalate.ScalateSupport

class DatabaseValidatorServlet extends DatabasetoolswsStack {

  get("/") {
    <html>
      <body>
        <h1>Hello, world!</h1>
        Say <a href="hello-scalate">hello to Scalate</a>.
      </body>
    </html>
  }

}
