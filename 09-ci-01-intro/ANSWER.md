# Описание
В соответствии с заданием реализованы воркфлоу для бага и остальных задач (по упрощенной схеме)
Ниже файлы с workflow и скриншоты workflow приложите к решению задания

# Решение
## Cкриншоты workflow
![ответ](./bug_flow.png)
![ответ](another_flow.png)

## Bug workflow

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">
<workflow>
  <meta name="jira.description"></meta>
  <meta name="jira.update.author.id">5d3db7c8e4777b0db2f0a9c4</meta>
  <meta name="jira.update.author.key">5d3db7c8e4777b0db2f0a9c4</meta>
  <meta name="jira.updated.date">1725110405409</meta>
  <initial-actions>
    <action id="1" name="Create">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">1</meta>
      <results>
        <unconditional-result old-status="null" status="open" step="1">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
              <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">1</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
  </initial-actions>
  <global-actions>
    <action id="2" name="On fix">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">2</meta>
      <results>
        <unconditional-result old-status="null" status="null" step="10012">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">13</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
  </global-actions>
  <steps>
    <step id="1" name="Open">
      <meta name="jira.status.id">1</meta>
      <actions>
        <action id="11" name="To reproduse">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">11</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="2">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="7" name="Closed">
      <meta name="jira.status.id">6</meta>
    </step>
    <step id="2" name="On reproduce">
      <meta name="jira.status.id">10006</meta>
      <actions>
        <action id="21" name="To open">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">21</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="1">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
        <action id="31" name="To done">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">31</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="3">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
        <action id="41" name="To Done reproduse">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">41</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="4">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="4" name="Done reproduce">
      <meta name="jira.status.id">10007</meta>
      <actions>
        <action id="3" name="to on fix">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">3</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="10012">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="6" name="Done fix">
      <meta name="jira.status.id">10008</meta>
      <actions>
        <action id="6" name="to on test">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">6</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="5">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="5" name="On test">
      <meta name="jira.status.id">10009</meta>
      <actions>
        <action id="7" name="to on fix">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">7</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="10012">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
        <action id="8" name="to done">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">8</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="3">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="3" name="Done">
      <meta name="jira.status.id">10010</meta>
      <actions>
        <action id="9" name="to closed">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">9</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="7">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
        <action id="10" name="to open">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">10</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="1">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="10012" name="On fix">
      <meta name="jira.status.id">10012</meta>
      <actions>
        <action id="4" name="to on reproduse">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">4</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="2">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
        <action id="5" name="to done fix">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">5</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="6">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
  </steps>
</workflow>
```


## Another workflow

```


<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">
<workflow>
  <meta name="jira.description"></meta>
  <meta name="jira.update.author.id">5d3db7c8e4777b0db2f0a9c4</meta>
  <meta name="jira.update.author.key">5d3db7c8e4777b0db2f0a9c4</meta>
  <meta name="jira.updated.date">1725122158633</meta>
  <initial-actions>
    <action id="1" name="Create">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">1</meta>
      <results>
        <unconditional-result old-status="null" status="open" step="1">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
              <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">1</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
  </initial-actions>
  <global-actions>
    <action id="2" name="on develop">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">2</meta>
      <results>
        <unconditional-result old-status="null" status="null" step="10015">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">13</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
    <action id="5" name="done develop">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">5</meta>
      <results>
        <unconditional-result old-status="null" status="null" step="10016">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">13</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
    <action id="7" name="On test">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">7</meta>
      <results>
        <unconditional-result old-status="null" status="null" step="10009">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">13</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
    <action id="10" name="Done">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">10</meta>
      <results>
        <unconditional-result old-status="null" status="null" step="10010">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">13</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
    <action id="11" name="Closed">
      <meta name="jira.description"></meta>
      <meta name="jira.nextgen.transition.id">11</meta>
      <results>
        <unconditional-result old-status="null" status="null" step="6">
          <post-functions>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
            </function>
            <function type="class">
              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
              <arg name="eventTypeId">13</arg>
            </function>
          </post-functions>
        </unconditional-result>
      </results>
    </action>
  </global-actions>
  <steps>
    <step id="1" name="Open">
      <meta name="jira.status.id">1</meta>
      <actions>
        <action id="3" name="to develop">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">3</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="10015">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="10015" name="on develop">
      <meta name="jira.status.id">10015</meta>
      <actions>
        <action id="4" name="to open">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">4</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="1">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
        <action id="6" name="to done develop">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">6</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="10016">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="10016" name="done develop">
      <meta name="jira.status.id">10016</meta>
      <actions>
        <action id="8" name="to on test">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">8</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="10009">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="10009" name="On test">
      <meta name="jira.status.id">10009</meta>
      <actions>
        <action id="9" name="to on develop">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">9</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="10015">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
        <action id="12" name="to done">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">12</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="10010">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="10010" name="Done">
      <meta name="jira.status.id">10010</meta>
      <actions>
        <action id="13" name="to closed">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">13</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="6">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
    <step id="6" name="Closed">
      <meta name="jira.status.id">6</meta>
      <actions>
        <action id="14" name="to open">
          <meta name="jira.description"></meta>
          <meta name="jira.nextgen.transition.id">14</meta>
          <results>
            <unconditional-result old-status="null" status="null" step="1">
              <post-functions>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>
                </function>
                <function type="class">
                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>
                  <arg name="eventTypeId">13</arg>
                </function>
              </post-functions>
            </unconditional-result>
          </results>
        </action>
      </actions>
    </step>
  </steps>
</workflow>

```