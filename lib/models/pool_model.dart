class PoolModel {
  bool? success;
  String? msg;
  PoolData? poolData;

  PoolModel({
    this.success,
    this.poolData,
    this.msg,
  });

  factory PoolModel.fromJson(Map<String, dynamic> json) {
    return PoolModel(
      success: json['success'],
      msg: json['msg'],
    );
  }
}

class PoolData {
  Summray? summray;
  Pools? pools;

  PoolData({
    this.summray,
    this.pools,
  });

  factory PoolData.fromJson(Map<String, dynamic> json) {
    return PoolData(
      summray: json['summary'],
      pools: json['pools'],
    );
  }
}

class Summray {
  num? totalPaidBtc;
  num? past24HrMiner;
  num? past24HRWorker;

  Summray({
    this.past24HRWorker,
    this.past24HrMiner,
    this.totalPaidBtc,
  });

  factory Summray.fromJson(Map<String, dynamic> json) {
    return Summray(
      totalPaidBtc: json['total_paid_btc'],
      past24HrMiner: json['past_24hr_miners'],
      past24HRWorker: json['past_24hr_workers'],
    );
  }
}

class Pools {
  Ethash? ethash;
  Etchash? etchash;
  Kawpow? kawpow;
  Randomx? randomx;

  Pools({
    this.ethash,
    this.etchash,
    this.kawpow,
    this.randomx,
  });

  factory Pools.fromJson(Map<String, dynamic> json) {
    return Pools(
      etchash: json["etchash"],
      ethash: json["ethash"],
      kawpow: json["kawpow"],
      randomx: json["randomx"],
    );
  }
}

class Ethash {
  num? lastReward;
  num? avgRewardTime;

  Ethash({
    this.avgRewardTime,
    this.lastReward,
  });

  factory Ethash.fromJson(Map<String, dynamic> json) {
    return Ethash(
      lastReward: json["last_reward"],
      avgRewardTime: json["avg_reward_time"],
    );
  }
}

class Etchash {
  num? lastReward;
  num? avgRewardTime;

  Etchash({
    this.avgRewardTime,
    this.lastReward,
  });

  factory Etchash.fromJson(Map<String, dynamic> json) {
    return Etchash(
      lastReward: json["last_reward"],
      avgRewardTime: json["avg_reward_time"],
    );
  }
}

class Kawpow {
  num? lastReward;
  num? avgRewardTime;

  Kawpow({
    this.avgRewardTime,
    this.lastReward,
  });

  factory Kawpow.fromJson(Map<String, dynamic> json) {
    return Kawpow(
      lastReward: json["last_reward"],
      avgRewardTime: json["avg_reward_time"],
    );
  }
}

class Randomx {
  num? lastReward;
  num? avgRewardTime;

  Randomx({
    this.avgRewardTime,
    this.lastReward,
  });

  factory Randomx.fromJson(Map<String, dynamic> json) {
    return Randomx(
      lastReward: json["last_reward"],
      avgRewardTime: json["avg_reward_time"],
    );
  }
}
