#include "skpch.h"
#include "Application.h"

namespace Skuld {
	Application::Application(const std::string& name)
	{
		std::cout << "App Created\n";
	}
	Application::~Application()
	{
		std::cout << "App Deleted\n";
	}
	void Application::Run()
	{
		std::cout << "App Run\n";
		std::cout << "Hello World!\n";
		std::cin.get();
	}
}