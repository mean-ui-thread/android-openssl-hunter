cmake_minimum_required(VERSION 3.13)

include(cmake/Hunter/HunterGate.cmake)
HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.23.136.tar.gz"
    SHA1 "1ed14d1b60393bddffff44c5527f17b42596eb89"
    LOCAL
)

project(FakeProject)

hunter_add_package(CURL)
find_package(CURL CONFIG REQUIRED)

