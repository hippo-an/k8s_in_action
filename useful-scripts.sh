#!/bin/bash

k scale job job-name --replicas 3  # job 의 parallelism 속성을 변경

k label pod pod-name aaa=bbb  # pod 에 라벨 지정, pod 뿐 아니라 다른 오브젝트들에도 라벨 지정 가능