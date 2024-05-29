import worker from '@ohos.worker';


let parent = worker.workerPort;
parent.onmessage = function(message){
  console.info("onMessage:"+message)
  parent.postMessage("This message  from work Thread")
}