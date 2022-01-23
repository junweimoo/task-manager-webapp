import axios from "axios";

function TagTask({ task, tagList, refreshTaskNew, getUserTags }) {
  function addTaskToTag(tag) {
    axios
      .put(`/api/tags/${tag.id}`, {
        do: "add",
        task: task.id
      })
      .then((res) => {
        refreshTaskNew(res.data)
        getUserTags()
      })
      .catch((error) => console.log(error))
  }

  let alreadyTagged = task.tags.map((tag) => {return tag.id})

  return (<div className="TaskTagList">
    {tagList.map((tag, index) => {
      if (!alreadyTagged.includes(tag.id))
      return (
        <h3 key={index} onClick={()=>{addTaskToTag(tag)}}>
          {tag.name}
        </h3>)
    })}
  </div>)
}

export default TagTask