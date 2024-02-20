load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def _extension_for_openssl_repo_impl(ctx):
    maybe(
        http_archive,
        name = "openssl",
        build_file = Label("//vendor/openssl:BUILD.openssl.bazel"),
        sha256 = "9384a2b0570dd80358841464677115df785edb941c71211f75076d72fe6b438f",
        strip_prefix = "openssl-1.1.1o",
        urls = [
            "https://mirror.bazel.build/www.openssl.org/source/openssl-1.1.1o.tar.gz",
            "https://www.openssl.org/source/openssl-1.1.1o.tar.gz",
            "https://github.com/openssl/openssl/archive/OpenSSL_1_1_1o.tar.gz",
        ],
    )

openssl_repo = module_extension(implementation = _extension_for_openssl_repo_impl)
