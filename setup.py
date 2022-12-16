from setuptools import setup, find_packages

GIT_REPONAME_MODULE_OVERIDES = {"polly": "pypolly"}


def get_app_version():
    return "0.01"


def get_requirements():
    requirements = []
    with open("requirements.txt") as requirement_file:
        # filter out empty strings and comments
        for line in requirement_file:
            line = line.strip()

            if line and not line.startswith("#"):
                requirements.append(line)
    return requirements


setup(
    name="Moojuice_doc_library",
    version=get_app_version(),
    author="Josh Mooney",
    author_email="moojuicedev@gmail.com",
    url="",
    license="LICENSE.txt",
    packages=find_packages(),
    install_requires=get_requirements(),
    include_package_data=True,
)