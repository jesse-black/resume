# Jesse Black

Technical Founder | Staff Software Engineer

- Location: Chicago, IL
- Email: [jesse.w.black@gmail.com](mailto:jesse.w.black@gmail.com)
- LinkedIn: [jessewblack](https://linkedin.com/in/jessewblack)
- GitHub: [jesse-black](https://github.com/jesse-black)


# Summary

Building accessible AI communication products and the secure, reliable systems behind them.

# Skills

**Agentic Engineering & Quality:** AI coding agents (Claude Code, Codex, Gemini CLI), agent skills, quality gates, E2E testing, Dev Containers

**Identity & Security:** AuthN/AuthZ, OAuth2/OIDC, SSO, IdP, IAM, RBAC

**Developer & Agent Tooling:** Rust CLI tools, static analysis, Git diff coverage, documentation tooling

**Cloud & Eventing:** Azure, Terraform, Docker, Podman, event-driven systems (Event Hub/Kafka, Service Bus)

**AI & Speech Integrations:** OpenAI API (GPT models), Azure Speech (speech recognition)

**Ecommerce Integrations:** App marketplace, OAuth apps, public developer API, Shopify, WooCommerce

**Backend:** Distributed systems, REST APIs, C#/.NET, Node.js, SQL Server, Redis

**Frontend:** TypeScript, React, micro frontends (MFE), Tailwind

# Experience

## **Technical Founder**, Vibramind LLC — Chicago, IL
*Oct 2025 – present*

Technical founder building an accessibility-first, AI-powered communication app with agentic engineering.
- Founded and built an accessibility-first communication app for Deaf professionals, combining real-time speech-to-text and text-to-speech.
- Built saved responses and GPT-powered smart replies with one-tap playback, context-aware rewrites, and predictive suggestions.
- Implemented an agentic engineering workflow with AI coding agents, hardened dev sandboxes, and automated quality-gate feedback loops.
- Bootstrapped a secure cloud stack with Terraform, Microsoft Entra External ID, and Azure SQL, optimizing for low burn while designing for scale.


## **Staff Software Engineer**, ShipBob — Chicago, IL
*Nov 2022 – Oct 2025*

Staff engineer building distributed event-driven shipment services and secure iOS micro frontend integration for fulfillment operations at scale.
- Architected and built a fulfillment center shipment service to track and manage shipping orders.
- Modernized shipping order ingestion using Event Hub (Kafka-compatible) and Service Bus to decouple from the monolith and enable tenantization and sharding.
- Enabled all engineering teams to embed micro frontends (MFE) in the iOS app with secure token transfer to enable seamless single sign-on (SSO).
- Strengthened CI/CD quality gates, adding containerized integration testing (Docker) and local database tests to improve end-to-end reliability.
- Mentored two Senior Software Engineers to Staff level.


## **Senior Software Engineer**, ShipBob — Chicago, IL
*Dec 2018 – Nov 2022*

Senior engineer leading the IAM overhaul and App Marketplace integrations platform, raising the engineering quality bar with automated gates.
- Served as lead engineer for the IAM and App Marketplace teams, driving architecture, execution, and engineer growth through weekly one-on-ones.
- Led the IAM rebuild using IdentityServer for OAuth2 and OpenID Connect (OIDC).
- Enabled fulfillment center managers to create and manage associate logins directly, eliminating IT-ticket-based provisioning as a scaling bottleneck as ShipBob scaled to hundreds of fulfillment centers.
- Led the new App Marketplace with OAuth 2.0, a public Developer API, and iPaaS integration.
- Delivered 6 App Marketplace integrations, including Walmart and Wix.
- Introduced automated code-quality gates (SonarQube) on the App Marketplace team and enforced minimum 80% test coverage across the team's portfolio, achieving the highest overall test coverage in the engineering organization.
- Drove early adoption of C# 8 nullable reference types across the engineering org.
- Implemented and documented many [ShipBob Developer API](https://developer.shipbob.com/) endpoints, and built the docs system aggregating OpenAPI specs across microservices.


## **Software Engineer**, The Nerdery — Chicago, IL
*Nov 2015 – Oct 2018*

Digital consultancy engineer delivering custom .NET applications for enterprise clients.
- Built custom web and desktop applications for enterprise clients in a fast-paced consulting environment.
- Worked with client stakeholders to define requirements and deliver .NET/SQL Server solutions.


# Projects

## **docgarden**
*[jesse-black/docgarden](https://github.com/jesse-black/docgarden)*

Open-source Rust CLI for repository knowledge systems in agentic engineering repos.
- Optimized agent token efficiency and made context cheaper by making repository knowledge self-routing.
- Designed BM25F ranked retrieval over repository metadata so agents could find the right plans, skills, and design docs without oversized instruction files.
- Codified repository knowledge standards into deterministic checks for document metadata and token limits on high-traffic files like `AGENTS.md`.


## **covgate**
*[jesse-black/covgate](https://github.com/jesse-black/covgate)*

Open-source Rust CLI for Git diff coverage gates in CI and coding-agent workflows.
- Built a coverage gate that prevents untested code from merging by evaluating only the lines changed in a pull request.
- Supported Rust, JavaScript/TypeScript, and .NET coverage workflows so teams can apply the same quality gate across multiple stacks.
- Added branch, region, and function diff gates alongside line coverage for more precise enforcement on changed code.
- Enabled local diff-gate checks for Codex Cloud and Google Jules task environments, shortening feedback loops for shallow-checkout cloud agent sandboxes.


# Education

## **Rochester Institute of Technology**, Bachelor of Science in Computer Science — Rochester, NY

- Minor in Mathematics


---

Learn more about how and why this resume is built in [ABOUT.md](ABOUT.md)
