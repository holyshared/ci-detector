defineProperty = (target, env) ->
  for key, value of env
    readOnlyValue = undefined
    readOnlyValue = env[value] if env[value] != undefined

    Object.defineProperty target, key, value: readOnlyValue

class Travis
  constructor: (env) ->
    @env = env
  isCurrent: ->
    @ci && @current

Object.defineProperty Travis::, 'ci', get: ->
  if @env.CI == 'true' then true else false

Object.defineProperty Travis::, 'current', get: ->
  if @env.TRAVIS == 'true' then true else false

defineProperty Travis::, {
  branch: 'TRAVIS_BRANCH',
  commit: 'TRAVIS_COMMIT',
  buildId: 'TRAVIS_BUILD_ID' 
  buildNumber: 'TRAVIS_BUILD_NUMBER'
  buildJobId: 'TRAVIS_JOB_ID'
  buildJobNumber: 'TRAVIS_JOB_NUMBER'
}

module.exports = Travis
