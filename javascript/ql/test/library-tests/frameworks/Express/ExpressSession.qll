import javascript
import semmle.javascript.frameworks.ExpressModules

query
predicate test_ExpressSession(ExpressLibraries::ExpressSession::MiddlewareInstance session,
                              string name, DataFlow::Node res) {
  res = session.getOption(name)
}
