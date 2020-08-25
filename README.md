# BoB9기 IDS/IPS 프로젝트를 위한 Repository.
## 팀 구성
- 담당 멘토
  - 김종민(Dakuo)
- 팀원
  - 김청준
  - 백송선
  - 이안나
  - 오선식
  - 전은영
  
![구성도](IDS_IPS.png)

## 환경
- 환경 구성
  - Linux(Ubuntu Server 18.04 LTS)
  - Virtual Machine(VMware)
  - Docker
  - Suricata 5.0.3

## 개발
- 개발 사항
  - TCP/HTTP/UDP/ICMP에 대한 공격을 감지(IDS) 및 차단(IPS)
  - Suricata를 이용해 룰 셋을 구성하여 공격 방어
- IDS
  - 공격자가 접속을 하게되면 패킷을 분석하여 공격 탐지 
  - 넓은 범위의 룰을 적용하여 alert와 로그를 기록
  - Rule Set Level : Strict 
 
- IPS
  - 공격자의  패킷 탐지 및  차단
  - Rule Set Level : Rough 

  
  
