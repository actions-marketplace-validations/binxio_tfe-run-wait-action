Terraform Enterprise Run Wait

waits for a Terraform Enterprise run to complete. Uses [tfe-run-wait](https://pypi.org/project/tfe-run-wait/) for the implementation.


## Inputs

| name        | required | default | description |
|-------------------|-------|------|-------------|
| action            | true  | wait | wait or apply for a TFE run |
| clone_url         | true  |      | of the repository triggering the TFE run |
| commit_sha        | true  |      | of the commit triggering the TFE run |
| branch            | false |      | on which the commit triggered the TFE run |
| token             | false |      | to authenticate against TFE |
| organization      | true  |      | of the run |
| workspace         | false |      | of the run |
| maximum_wait_time | false | 45   | for the run to be in the expected state |
| wait_for_status   | false |      | space separated list of states to wait for |
| comment           | false |      | to include in the apply |

## Outputs

There are no outputs.

## Example usage

```yaml
uses: actions/tfe-run-wait-action@main
with:
  action: wait
  token: ${{ secrets.TFE_API_TOKEN }}
  branch: main
  clone_url: ${GITHUB_SERVER_URL}/${GITHUB_REPOSITORY}.git
  commit_sha: ${GITHUB_SHA}
  organization: binxio
```
