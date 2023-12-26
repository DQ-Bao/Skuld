#pragma once

#ifdef SKULD_PLATFORM_WINDOWS

extern Skuld::Application* Skuld::CreateApplication();

int main(int argc, char** argv) {
	auto app = Skuld::CreateApplication();
	app->Run();
	delete app;
}

#endif