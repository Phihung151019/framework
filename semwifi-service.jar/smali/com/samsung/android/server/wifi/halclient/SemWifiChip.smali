.class public Lcom/samsung/android/server/wifi/halclient/SemWifiChip;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$IfaceInfo;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiAntennaMode;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$IfaceType;,
        Lcom/samsung/android/server/wifi/halclient/SemWifiChip$IfaceConcurrencyType;
    }
.end annotation


# static fields
.field public static final IFACE_CONCURRENCY_TYPE_AP:I = 0x1

.field public static final IFACE_CONCURRENCY_TYPE_AP_BRIDGED:I = 0x2

.field public static final IFACE_CONCURRENCY_TYPE_NAN:I = 0x4

.field public static final IFACE_CONCURRENCY_TYPE_P2P:I = 0x3

.field public static final IFACE_CONCURRENCY_TYPE_STA:I = 0x0

.field public static final IFACE_TYPE_AP:I = 0x1

.field public static final IFACE_TYPE_NAN:I = 0x3

.field public static final IFACE_TYPE_P2P:I = 0x2

.field public static final IFACE_TYPE_STA:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SemWifiChip"

.field public static final WIFI_ANTENNA_MODE_1X1:I = 0x1

.field public static final WIFI_ANTENNA_MODE_2X2:I = 0x2

.field public static final WIFI_ANTENNA_MODE_3X3:I = 0x3

.field public static final WIFI_ANTENNA_MODE_4X4:I = 0x4

.field public static final WIFI_ANTENNA_MODE_UNSPECIFIED:I


# instance fields
.field private mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;


# direct methods
.method public static synthetic $r8$lambda$-G84EmYoc1tfVYMohs0EkKyEwWE(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;III)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getUsableChannels$25(III)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$-tyaofg47b3JAvt2ehrKP8o8agY(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getId$6()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$08zWRVuea0ijULvRENmg72d2DdQ(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$enableDebugErrorAlerts$33(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$2_f1NExD8_StQB3v4Em1Axs5s68(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getDebugRingBuffersStatus$23()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$3mDGwyrvOsLqkKzhRjiFZJFq55I(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getNanIface$8(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$4eMXyHhrJF8nEVdPUYDLSIwwBFM(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;III)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$startLoggingToDebugRingBuffer$37(Ljava/lang/String;III)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$55GGTx7-ftf2YJZQvbCEzGAYiEI(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$flushRingBufferToFile$19()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$5C6QQt5rQL66gnV9TK9RwIKiKao(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$setMultiStaUseCase$36(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$B-K9YnFwXwyhtHdGXEzsepEkaJg(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$createP2pIface$2()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$BW1DUhMSZ8cMLZY3VZOzERgPlfI(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getSupportedRadioCombinations$14()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$CdHDEdeQUnpa37L8zpq21N-j9N4(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$setMloMode$32(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$ELrvlL3gBuB2bxjjUeOErR5bz0w(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$forceDumpToDebugRingBuffer$20(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$EkeF8HkMnpN3zfjEt2q8MRztQQ8(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$enableStaChannelForPeerNetwork$41(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$FBuMgsdI-ykoPR1BA3cBaNWa2XQ(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$setMultiStaPrimaryConnection$40(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$FsJudq-jeeJo7KnZlfFiOY-YF0E(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getStaIface$12(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$GAghiNz-Byoi8R45nAfXbX_-3dc(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$stopLoggingToDebugRingBuffer$38()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$H7eCZRWTwPL33NS-SWV53TvFdMw(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getAvailableModes$4()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$HdEc6bGhjVJR4O4EfAomO4nsOXQ(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getStaIfaceNames$13()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Ks2ij5K8Z6bISMRwwPk8o1_XWto(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$removeApIface$15(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$OxOKe73sU1fIurt1YKHi0KxJynM(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$createStaIface$3()Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$PXQAbsOPNw0UszR0VNqDDAjA3vU(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$removeP2pIface$17(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Ql586HwQz0OoiCCypXtCg0XaA-k(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$requestChipDebugInfo$26()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$TN3lpNugAaFpmmopXETC6NEG5iE(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getFeatureSet$21()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$UDbw1Yv9CBMfdYtZrJixqDujm5k(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getP2pIfaceNames$11()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$V1Vlg53183MSsfBe-Nn4WqRWCXY(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$resetTxPowerScenario$29()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Vl7duBqz0nNCwyuvWf_UYHTOXCM(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$setLatencyMode$31(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$Z2z9MV6Vv80Djf7QAop_Gq1L9d8(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getMode$7()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$ZJToToXsM6nIvYOtHsxijar1lls(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$selectTxPowerScenario$34(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$akVKU6IQKV5_6EqXOrP9NnKvxL4(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$requestFirmwareDebugDump$28()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$dWYChpVzfjODC9NMIRfBPr9McAA(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getDebugHostWakeReasonStats$22()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$eAsQSfj4MEbTO4TnpAFx7iy6Md8(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getCapabilitiesBeforeIfacesExist$5()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$eB7tKpMB2xFzYdOUIP87ig3q-YY(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$configureChip$0(I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$hzKiJjv830s4EoMk_TdSZHXhDy4(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;[B)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$setCountryCode$35([B)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$i7cr9ngl9_IfK32LN5Evtp5KND8(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$createNanIface$1()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$lhlW77nAnSdzyRU6bIJTJCKPNAA(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$removeStaIface$18(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$lvGHZYOlKRaC7ntnmGUAJiUFXwQ(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getNanIfaceNames$9()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$lzW9HmypRIZuhF0SdDLPpZuYNVc(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$requestDriverDebugDump$27()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$n6NvsGN_x6Q1dbllZ7g8fE_SKjc(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getWifiChipCapabilities$24()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$o6c8-neasBO7vLi77B2Y9wQhoqo(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$removeNanIface$16(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$t9VHivMHzTKzlu5BjT0j04v9Pbw(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$setCoexUnsafeChannels$30([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$uNa3Y0z5s-Y0c_oAbvg8xhUQa08(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$getP2pIface$10(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$vhA1URL3yZ-87Hx84zFsfOL3iag(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->lambda$setAfcChannelAllowance$39()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->createWifiChipAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;)Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->createWifiChipHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    return-void
.end method

.method private synthetic lambda$configureChip$0(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->configureChip(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$createNanIface$1()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->createNanIface()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$createP2pIface$2()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->createP2pIface()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$createStaIface$3()Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->createStaIface()Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$enableDebugErrorAlerts$33(Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->enableDebugErrorAlerts(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$enableStaChannelForPeerNetwork$41(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->enableStaChannelForPeerNetwork(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$flushRingBufferToFile$19()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->flushRingBufferToFile()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$forceDumpToDebugRingBuffer$20(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getAvailableModes$4()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getAvailableModes()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getCapabilitiesBeforeIfacesExist$5()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getCapabilitiesBeforeIfacesExist()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getDebugHostWakeReasonStats$22()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getDebugHostWakeReasonStats()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getDebugRingBuffersStatus$23()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getDebugRingBuffersStatus()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getFeatureSet$21()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getFeatureSet()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getId$6()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getMode$7()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getMode()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getNanIface$8(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getNanIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getNanIfaceNames$9()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getNanIfaceNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getP2pIface$10(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getP2pIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getP2pIfaceNames$11()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getP2pIfaceNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getStaIface$12(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getStaIfaceNames$13()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getStaIfaceNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getSupportedRadioCombinations$14()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getSupportedRadioCombinations()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic lambda$getUsableChannels$25(III)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getUsableChannels(III)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$getWifiChipCapabilities$24()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->getWifiChipCapabilities()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$removeApIface$15(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->removeApIface(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$removeNanIface$16(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->removeNanIface(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$removeP2pIface$17(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->removeP2pIface(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$removeStaIface$18(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->removeStaIface(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$requestChipDebugInfo$26()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->requestChipDebugInfo()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$requestDriverDebugDump$27()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->requestDriverDebugDump()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$requestFirmwareDebugDump$28()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->requestFirmwareDebugDump()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$resetTxPowerScenario$29()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->resetTxPowerScenario()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$selectTxPowerScenario$34(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->selectTxPowerScenario(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setAfcChannelAllowance$39()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->setAfcChannelAllowance()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setCoexUnsafeChannels$30([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setCountryCode$35([B)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->setCountryCode([B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setLatencyMode$31(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->setLatencyMode(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setMloMode$32(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->setMloMode(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setMultiStaPrimaryConnection$40(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->setMultiStaPrimaryConnection(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$setMultiStaUseCase$36(I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->setMultiStaUseCase(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$startLoggingToDebugRingBuffer$37(Ljava/lang/String;III)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private synthetic lambda$stopLoggingToDebugRingBuffer$38()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;->stopLoggingToDebugRingBuffer()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->mWifiChip:Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "Cannot call "

    .line 6
    .line 7
    const-string p3, " because mWifiChip is null"

    .line 8
    .line 9
    invoke-static {p0, p1, p3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "SemWifiChip"

    .line 14
    .line 15
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public configureChip(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "configureChip"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public createNanIface()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "createNanIface"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 16
    .line 17
    return-object p0
.end method

.method public createP2pIface()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "createP2pIface"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 15
    .line 16
    return-object p0
.end method

.method public createStaIface()Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "createStaIface"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 15
    .line 16
    return-object p0
.end method

.method protected createWifiChipAidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;)Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipAidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected createWifiChipHidlImplMockable(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public enableDebugErrorAlerts(Z)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda19;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Z)V

    .line 6
    .line 7
    .line 8
    const-string p1, "enableDebugErrorAlerts"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public enableStaChannelForPeerNetwork(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "enableStaChannelForPeerNetwork"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public flushRingBufferToFile()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "flushRingBufferToFile"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public forceDumpToDebugRingBuffer(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "forceDumpToDebugRingBuffer"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getAvailableModes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getAvailableModes"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/List;

    .line 15
    .line 16
    return-object p0
.end method

.method public getCapabilitiesBeforeIfacesExist()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/16 v2, 0xf

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 17
    .line 18
    .line 19
    const-string v2, "getCapabilitiesBeforeIfacesExist"

    .line 20
    .line 21
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 26
    .line 27
    return-object p0
.end method

.method public getDebugHostWakeReasonStats()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "getDebugHostWakeReasonStats"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public getDebugRingBuffersStatus()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0x14

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "getDebugRingBuffersStatus"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public getFeatureSet()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 7
    .line 8
    .line 9
    const-string v2, "getFeatureSet"

    .line 10
    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getId()I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 11
    .line 12
    .line 13
    const-string v2, "getId"

    .line 14
    .line 15
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public getMode()Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 15
    .line 16
    .line 17
    const-string v2, "getMode"

    .line 18
    .line 19
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 24
    .line 25
    return-object p0
.end method

.method public getNanIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "getNanIface"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 15
    .line 16
    return-object p0
.end method

.method public getNanIfaceNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "getNanIfaceNames"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/List;

    .line 16
    .line 17
    return-object p0
.end method

.method public getP2pIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "getP2pIface"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 15
    .line 16
    return-object p0
.end method

.method public getP2pIfaceNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "getP2pIfaceNames"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/List;

    .line 15
    .line 16
    return-object p0
.end method

.method public getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string p1, "getStaIface"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 16
    .line 17
    return-object p0
.end method

.method public getStaIfaceNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "getStaIfaceNames"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/List;

    .line 16
    .line 17
    return-object p0
.end method

.method public getSupportedRadioCombinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "getSupportedRadioCombinations"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/List;

    .line 16
    .line 17
    return-object p0
.end method

.method public getUsableChannels(III)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;III)V

    .line 6
    .line 7
    .line 8
    const-string p1, "getUsableChannels"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public getWifiChipCapabilities()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "getWifiChipCapabilities"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public removeApIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeApIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public removeNanIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeNanIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public removeP2pIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeP2pIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public removeStaIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeStaIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public requestChipDebugInfo()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "requestChipDebugInfo"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public requestDriverDebugDump()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "requestDriverDebugDump"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public requestFirmwareDebugDump()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 7
    .line 8
    .line 9
    const-string v2, "requestFirmwareDebugDump"

    .line 10
    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public resetTxPowerScenario()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0x13

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resetTxPowerScenario"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public selectTxPowerScenario(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "selectTxPowerScenario"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public setAfcChannelAllowance()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "setAfcChannelAllowance"

    .line 11
    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)V

    .line 6
    .line 7
    .line 8
    const-string p1, "setCoexUnsafeChannels"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public setCountryCode([B)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;[B)V

    .line 6
    .line 7
    .line 8
    const-string p1, "setCountryCode"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public setLatencyMode(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "setLatencyMode"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public setMloMode(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "setMloMode"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public setMultiStaPrimaryConnection(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "setMultiStaPrimaryConnection"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public setMultiStaUseCase(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;II)V

    .line 7
    .line 8
    .line 9
    const-string p1, "setMultiStaUseCase"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda34;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-object v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda34;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;Ljava/lang/String;III)V

    .line 11
    .line 12
    .line 13
    const-string p0, "startLoggingToDebugRingBuffer"

    .line 14
    .line 15
    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public stopLoggingToDebugRingBuffer()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChip;I)V

    .line 7
    .line 8
    .line 9
    const-string v2, "stopLoggingToDebugRingBuffer"

    .line 10
    .line 11
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
