Feature: Movies end point

  @api
  Scenario: Send post http protocol
    Given the user set uri
    And the user sends post request with "/movies" end point
      | title           | Salamanca |
      | year            | 1997      |
      | plot            | MrtFth    |
      | duration        | 123       |
      | audio_qualities |           |
      | video_qualities |           |
      | genre           |           |
    When Verify the status code is 201
    And Verify the content type is "application/json; charset=utf-8"
    Then print the response body

