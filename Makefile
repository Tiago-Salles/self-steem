FLUTTER_PUB_GET = flutter pub get
FLUTTER_CLEAN = flutter clean
FLUTTER_BUILD_WEB = flutter build web
FIREBASE_DEPLOY = firebase deploy

deploy:
	$(FLUTTER_CLEAN)
	$(FLUTTER_PUB_GET)
	$(FLUTTER_BUILD_WEB)
	$(FIREBASE_DEPLOY)