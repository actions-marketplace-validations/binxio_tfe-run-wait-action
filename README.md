Terraform Enterprise Run Wait

waits for a Terraform Enterprise run to complete. Uses [tfe-run-wait](https://pypi.org/project/tfe-run-wait/) for the implementation.


## Inputs

| name        | required | default | description |
|-------------------|-------|------|-------------|
| action            | true  | wait | wait or apply for a TFE run |
| clone-url         | true  |      | of the repository triggering the TFE run |
| commit-sha        | true  |      | of the commit triggering the TFE run |
| token             | false |      | to authenticate against TFE |
| organization      | true  |      | of the run |
| workspace         | false |      | of the run |
| maximum-wait-time | false | 45   | for the run to be in the expected state |
| wait-for-status   | false |      | space separated list of states to wait for |
| comment           | false |      | to include in the apply |

## Outputs

There are no outputs.

## Example usage

```yaml
uses: actions/tfe-run-wait-action@main
with:
  action: wait
  clone-url: ${GITHUB_SERVER_URL}/${GITHUB_REPOSITORY}.git
  commit-sha: ${GITHUB_SHA}
  organization: binxio
```
