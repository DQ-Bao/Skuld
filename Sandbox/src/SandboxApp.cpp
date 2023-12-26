#include <Skuld.h>
#include <Skuld/Core/EntryPoint.h>

class Sandbox : public Skuld::Application {
public:
	Sandbox()
		: Application("Sanbox") {}
	~Sandbox() {}
};

Skuld::Application* Skuld::CreateApplication() {
	return new Sandbox();
}