import requests
import argparse

def parse_args():
    parser = argparse.ArgumentParser(description='Find repositories missing Dependabot configuration')
    parser.add_argument('--user', type=str, required=True, help='GitHub username')
    parser.add_argument('--token', type=str, required=True, help='GitHub personal access token')

    return parser.parse_args()

def main():
    args = parse_args()
    github_user = args.user
    token = args.token     # Generate a Personal Access Token with repo access
    
    headers = {
        "Authorization": f"token {token}",
        "Accept": "application/vnd.github.v3+json"
    }

    repos_url = f"https://api.github.com/users/{github_user}/repos?per_page=100"
    repos = requests.get(repos_url, headers=headers).json()

    missing_dependabot = []

    for repo in repos:
        repo_name = repo['name']
        url = f"https://api.github.com/repos/{github_user}/{repo_name}/contents/.github/dependabot.yml"
        r = requests.get(url, headers=headers)
        if r.status_code == 404:
            url_alt = f"https://api.github.com/repos/{github_user}/{repo_name}/contents/.github/dependabot.yaml"
            r_alt = requests.get(url_alt, headers=headers)
            if r_alt.status_code == 404:
                missing_dependabot.append(repo_name)

    print("Repositories missing Dependabot configuration:")
    for repo in missing_dependabot:
        print(repo)

if __name__ == "__main__":
    main()
