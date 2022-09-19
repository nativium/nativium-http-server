from conan import ConanFile


# -----------------------------------------------------------------------------
def configure(params={}):
    conanfile: ConanFile = params["conanfile"]

    conanfile.options["drogon"].with_boost = False
    conanfile.options["drogon"].with_ctl = False
    conanfile.options["drogon"].with_orm = False
    conanfile.options["drogon"].with_profile = False
    conanfile.options["drogon"].with_brotli = False
    conanfile.options["drogon"].with_postgres = False
    conanfile.options["drogon"].with_postgres_batch = False
    conanfile.options["drogon"].with_mysql = False
    conanfile.options["drogon"].with_sqlite = False
    conanfile.options["drogon"].with_redis = False


# -----------------------------------------------------------------------------
def requirements(params={}):
    conanfile: ConanFile = params["conanfile"]

    conanfile.requires("drogon/1.8.0")
