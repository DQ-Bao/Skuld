#pragma once
#include <string>

int main(int argc, char** argv);

namespace Skuld {
	class Application {
	public:
		Application(const std::string& name = "Skuld App");
		virtual ~Application();
	private:
		void Run();
	private:
		friend int ::main(int argc, char** argv);
	};

	Application* CreateApplication();
}