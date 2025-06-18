# VOC (Voice of Customer) 시스템

이 프로젝트는 고객의 목소리(VOC)를 수집하고 관리할 수 있는 Spring 기반의 웹 애플리케이션입니다. 기업 고객지원 시스템이나 피드백 관리 플랫폼 등에 활용될 수 있습니다.

## 📌 주요 기능

- 고객의 피드백 등록, 조회, 수정
- 관리자 페이지를 통한 VOC 관리
- 데이터베이스와 연동된 Spring MVC 구조
- JSP 기반 웹 인터페이스 (추정)
- MVC 아키텍처 기반 설계

## 🛠 기술 스택

- Java 8+
- Spring Framework
- JSP/Servlet
- Maven (pom.xml 기반)
- Eclipse 개발환경 (.project, .classpath 포함)

## 📁 프로젝트 구조

```
VOC/
├── src/                   # Java 소스 및 리소스
├── target/                # 빌드 결과물
├── .settings/             # Eclipse 설정 파일
├── pom.xml                # Maven 프로젝트 설정
└── ...
```

## ⚙️ 실행 방법

1. Eclipse 또는 IntelliJ로 프로젝트를 Import (Maven Project로)
2. `pom.xml`을 통해 의존성 자동 로딩
3. Tomcat 서버 설정 후 실행

```bash
mvn clean install
```

또는 Eclipse에서 Run As → Maven build → `clean install` 입력 후 실행

## 🧩 참고사항

- `.springBeans` 파일 존재로 보아 Spring configuration이 XML 기반으로 되어 있을 가능성이 높습니다.
- DB 연동 설정 및 초기 데이터는 따로 확인이 필요합니다 (`src/main/resources` 또는 `webapp/WEB-INF` 하위 확인).

## 📄 라이선스

본 프로젝트는 오픈소스가 아니며, 필요한 경우 라이선스 또는 사용 조건을 별도로 명시하십시오.
