.class public Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/ISemWifiChip;


# static fields
.field private static final IFACE_TYPE_TO_CONCURRENCY_TYPE_MAP:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "SemWifiChipHidlImpl"

.field private static final sChipFeatureCapabilityTranslation:[[J

.field private static final sChipFeatureCapabilityTranslation13:[[J

.field private static final sChipFeatureCapabilityTranslation15:[[J


# instance fields
.field private mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;


# direct methods
.method public static synthetic $r8$lambda$-Zm48CfWeOMgvYv_xFAW0YUZ0Po(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getModeInternal$22(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$0B9-T-gQSZ5wfa1Z5VXgmtBTbYc(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "getStaIfaceNames"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getStaIfaceNames$6(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$0JKhQvP3C6qsOh0z9dZX983N1-g(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getStaIfaceNamesInternal$7(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$1FULv5oCg14c-pjKJnfvSFgzWkQ(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 1

    .line 1
    const-string v0, "createP2pIface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$createP2pIface$28(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$1OE47Hgu3ZfU0ryumVVrOpahGWw(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 1

    .line 1
    const-string v0, "getP2pIface"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getP2pIface$4(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$1khwT_AETn1U_yteAImuKiyZYqQ(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getP2pIfaceInternal$5(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$4qQzkxAEZlNdYzZpMsQvbyzktQg(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 1

    .line 1
    const-string v0, "createStaIface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$createStaIface$24(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$6Dqq3Rdx5nbz6aCsA7YgsIqdWdo(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 1

    .line 1
    const-string v0, "getMode"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getMode$20(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$6c3IBjSMoLUBlfiNDQWorVeDXME(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "removeNanIface"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$removeNanIface$14(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$9nL358ygWVeASY3cvLeVi2mWqjA(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "getNanIfaceNames"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getNanIfaceNames$8(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$A1RO6cIqlPAUwcWVQxjA3nIzock(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "getP2pIfaceNames"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getP2pIfaceNames$10(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$CCKqWMgPnKSavWQhXkNgkiVgIWI(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "removeStaIface"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$removeStaIface$12(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$Hj9HNruNgtGhKCiAP7fNRJQZW5A(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getNanIfaceInternal$3(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IstsYEG0m1w6iWlb3EusVnyIoMA(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-string v0, "getId"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getId$19(Ljava/lang/String;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$JIDT-Lbv9eCy3FIGEesq_tZ-PuY(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 1

    .line 1
    const-string v0, "getStaIface"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getStaIface$0(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$LPZzEOOugxfl335DM0o0kP_xOks(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getNanIfaceNamesInternal$9(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NoF8EQaMrCNIRta913KbVsi0g7E(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 1

    .line 1
    const-string v0, "getNanIface"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getNanIface$2(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$T1lqiz_5GfolQun3Jcki5HhOTZo(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getAvailableModesInternal$31(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$TX1K7oQa0EPKrwURQvdiIWiyUn8(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getCapabilitiesBeforeIfacesExistInternal$23(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$VPrBTyOmg7AhLM-E-O-eU0ODRUs(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$createP2pIfaceInternal$29(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$WLYhQrgdz8PRFuY95jJOeGaOsNU(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "removeP2pIface"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$removeP2pIface$15(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$WbZ8ylQT8dMMyx-KPvtsiVIqnA4(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getIdInternal$21(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$XG-0hQgGAuHcXqf3rbXBO1P51Fk(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 1

    .line 1
    const-string v0, "getCapabilitiesBeforeIfacesExist"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getCapabilitiesBeforeIfacesExist$18(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$Yjr0cFqTRngB45F6xJE2-QUxAOU(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "removeApIface"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$removeApIface$13(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$bvUOrGz4l22WXbvHzkep9WrRkJE(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getAvailableModesInternal$32(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$cozmqY9_ien37tvUR9hkVb-pz9E(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$createStaIfaceInternal$25(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$fB2i9jGSESqHmFxieWjywflDP-U(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombinationMatrix;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getSupportedRadioCombinationsInternal$17(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombinationMatrix;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$iLtJT9KJVnekZ8qCu2hhVMZWd8U(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "getSupportedRadioCombinations"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getSupportedRadioCombinations$16(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$qu_IJKxsALmrWxgNYE68K2ou0vU(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 1

    .line 1
    const-string v0, "createNanIface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$createNanIface$26(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$r8xA6IovOYDM1C2XNzjHcXB0VxY(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$createNanIfaceInternal$27(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$rt0T0GtSp5eYf1_uyqHy2SneSMM(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getStaIfaceInternal$1(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$uBBPBhcE_JPlY5f-ghVhgQ-x6mE(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "configureChip"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$configureChip$33(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$vXDMqRj4VcfHhTrud_XctQQ3nU4(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "getAvailableModes"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getAvailableModes$30(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic $r8$lambda$yVhtQ3JHPYSewtaY7ZnnpqlnUTc(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->lambda$getP2pIfaceNamesInternal$11(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [J

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [[J

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->sChipFeatureCapabilityTranslation15:[[J

    .line 12
    .line 13
    new-array v1, v0, [J

    .line 14
    .line 15
    fill-array-data v1, :array_1

    .line 16
    .line 17
    .line 18
    new-array v2, v0, [J

    .line 19
    .line 20
    fill-array-data v2, :array_2

    .line 21
    .line 22
    .line 23
    filled-new-array {v1, v2}, [[J

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->sChipFeatureCapabilityTranslation13:[[J

    .line 28
    .line 29
    new-array v1, v0, [J

    .line 30
    .line 31
    fill-array-data v1, :array_3

    .line 32
    .line 33
    .line 34
    new-array v2, v0, [J

    .line 35
    .line 36
    fill-array-data v2, :array_4

    .line 37
    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_5

    .line 42
    .line 43
    .line 44
    filled-new-array {v1, v2, v0}, [[J

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->sChipFeatureCapabilityTranslation:[[J

    .line 49
    .line 50
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$1;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$1;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->IFACE_TYPE_TO_CONCURRENCY_TYPE_MAP:Landroid/util/SparseIntArray;

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x2b
        0x4000
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x1e
        0x1000
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_2
    .array-data 8
        0x20
        0x2000
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_3
    .array-data 8
        0x1a
        0x100
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :array_4
    .array-data 8
        0x7
        0x200
    .end array-data

    :array_5
    .array-data 8
        0x8
        0x400
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 5
    .line 6
    return-void
.end method

.method private static bitmapContains(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method private configureChipInternal(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private createNanIfaceInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/16 v3, 0xa

    .line 11
    .line 12
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 26
    .line 27
    return-object p0
.end method

.method private createP2pIfaceInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 25
    .line 26
    return-object p0
.end method

.method private createStaIfaceInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/16 v3, 0x9

    .line 11
    .line 12
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 26
    .line 27
    return-object p0
.end method

.method private getAvailableModesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getWifiChipV1_6Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    const/4 v3, 0x7

    .line 15
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getAvailableModes_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getAvailableModes_1_6Callback;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 25
    .line 26
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/util/List;

    .line 43
    .line 44
    return-object p0
.end method

.method private getCapabilitiesBeforeIfacesExistInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getWifiChipV1_5Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->getCapabilities_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getCapabilities_1_5Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 p0, 0xa

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object v0
.end method

.method private getIdInternal(Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Landroid/os/HidlSupport$Mutable;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method private getModeInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 p0, 0xa

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private getNanIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x6

    .line 11
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p2, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p2

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 25
    .line 26
    return-object p0
.end method

.method private getNanIfaceNamesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/List;

    .line 25
    .line 26
    return-object p0
.end method

.method private getP2pIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x5

    .line 11
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p2, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p2

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 25
    .line 26
    return-object p0
.end method

.method private getP2pIfaceNamesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/16 v3, 0xb

    .line 11
    .line 12
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ljava/util/List;

    .line 26
    .line 27
    return-object p0
.end method

.method private getStaIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p2, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p2

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 25
    .line 26
    return-object p0
.end method

.method private getStaIfaceNamesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;Landroid/os/HidlSupport$Mutable;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/List;

    .line 25
    .line 26
    return-object p0
.end method

.method private getSupportedRadioCombinationsInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HidlSupport$Mutable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getWifiChipV1_6Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda13;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda13;-><init>(Landroid/os/HidlSupport$Mutable;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getSupportedRadioCombinationsMatrix(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getSupportedRadioCombinationsMatrixCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/List;

    .line 30
    .line 31
    return-object p0
.end method

.method private static halToFrameworkAntennaMode(I)I
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Invalid WifiAntennaMode: "

    .line 16
    .line 17
    const-string v1, "SemWifiChipHidlImpl"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_0
    return v0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private static halToFrameworkChipConcurrencyCombinationLimitV1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    check-cast v4, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkIfaceConcurrencyType(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 40
    .line 41
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 42
    .line 43
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;-><init>(ILjava/util/List;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method private static halToFrameworkChipConcurrencyCombinationV1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkChipConcurrencyCombinationLimitV1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;-><init>(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private halToFrameworkChipModeListV1_0(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->upgradeV1_0ChipModesToV1_6(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkChipModeListV1_6(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static halToFrameworkChipModeListV1_6(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkChipModeV1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method private static halToFrameworkChipModeV1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkChipConcurrencyCombinationV1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 32
    .line 33
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;->id:I

    .line 34
    .line 35
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;-><init>(ILjava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method private static halToFrameworkIfaceConcurrencyType(I)I
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string v0, "Invalid IfaceConcurrencyType received: "

    .line 16
    .line 17
    const-string v1, "SemWifiChipHidlImpl"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_0
    return v0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private static halToFrameworkRadioCombination(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombination;->radioConfigurations:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioConfiguration;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkRadioConfiguration(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioConfiguration;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;-><init>(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private static halToFrameworkRadioCombinations(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombination;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombination;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkRadioCombination(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombination;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioCombination;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method private static halToFrameworkRadioConfiguration(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioConfiguration;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioConfiguration;->bandInfo:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkWifiBand(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioConfiguration;->antennaMode:I

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkAntennaMode(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$WifiRadioConfiguration;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private static halToFrameworkWifiBand(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->bitmapContains(II)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->bitmapContains(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x4

    .line 16
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->bitmapContains(II)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    or-int/lit8 v0, v0, 0x4

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->bitmapContains(II)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    or-int/lit8 v0, v0, 0x8

    .line 33
    .line 34
    :cond_2
    const/16 v1, 0x10

    .line 35
    .line 36
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->bitmapContains(II)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    or-int/lit8 p0, v0, 0x10

    .line 43
    .line 44
    return p0

    .line 45
    :cond_3
    return v0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, " failed with remote exception: "

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "SemWifiChipHidlImpl"

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 28
    .line 29
    return-void
.end method

.method private isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget p0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " failed with status: "

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "SemWifiChipHidlImpl"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method private synthetic lambda$configureChip$33(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->configureChipInternal(Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private synthetic lambda$createNanIface$26(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->createNanIfaceInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$createNanIfaceInternal$27(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$createP2pIface$28(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->createP2pIfaceInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$createP2pIfaceInternal$29(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$createStaIface$24(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->createStaIfaceInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$createStaIfaceInternal$25(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$getAvailableModes$30(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getAvailableModesInternal(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getAvailableModesInternal$31(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkChipModeListV1_6(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private synthetic lambda$getAvailableModesInternal$32(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkChipModeListV1_0(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private synthetic lambda$getCapabilitiesBeforeIfacesExist$18(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getCapabilitiesBeforeIfacesExistInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getCapabilitiesBeforeIfacesExistInternal$23(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->wifiFeatureMaskFromChipCapabilities_1_5(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->halToFrameworkWifiStatusCode(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private synthetic lambda$getId$19(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getIdInternal(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private synthetic lambda$getIdInternal$21(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private synthetic lambda$getMode$20(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getModeInternal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getModeInternal$22(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget p0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    .line 20
    .line 21
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiHalHidlImpl;->halToFrameworkWifiStatusCode(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;->setStatusCode(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private synthetic lambda$getNanIface$2(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getNanIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getNanIfaceInternal$3(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$getNanIfaceNames$8(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getNanIfaceNamesInternal(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getNanIfaceNamesInternal$9(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getP2pIface$4(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getP2pIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getP2pIfaceInternal$5(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$getP2pIfaceNames$10(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getP2pIfaceNamesInternal(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getP2pIfaceNamesInternal$11(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getStaIface$0(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getStaIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getStaIfaceInternal$1(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private synthetic lambda$getStaIfaceNames$6(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getStaIfaceNamesInternal(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$getStaIfaceNamesInternal$7(Ljava/lang/String;Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iput-object p4, p2, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$getSupportedRadioCombinations$16(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->getSupportedRadioCombinationsInternal(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getSupportedRadioCombinationsInternal$17(Landroid/os/HidlSupport$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombinationMatrix;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombinationMatrix;->radioCombinations:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->halToFrameworkRadioCombinations(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$removeApIface$13(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->removeApIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private synthetic lambda$removeNanIface$14(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->removeNanIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private synthetic lambda$removeP2pIface$15(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->removeP2pIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private synthetic lambda$removeStaIface$12(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->removeStaIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private removeApIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private removeNanIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private removeP2pIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private removeStaIfaceInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->isOk(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p2

    .line 13
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private upgradeV1_0ChipModesToV1_6(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;

    .line 21
    .line 22
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v4, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;->id:I

    .line 28
    .line 29
    iput v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;->id:I

    .line 30
    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v4, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v6, 0x0

    .line 45
    :goto_1
    if-ge v6, v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    check-cast v7, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;

    .line 54
    .line 55
    new-instance v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;

    .line 56
    .line 57
    invoke-direct {v8}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v9, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v9, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v9, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;

    .line 68
    .line 69
    invoke-direct {v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v10, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v10, v9, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/ArrayList;

    .line 78
    .line 79
    new-instance v10, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;

    .line 80
    .line 81
    invoke-direct {v10}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v11, 0x1

    .line 85
    iput v11, v10, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 86
    .line 87
    new-instance v12, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v12, v10, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/ArrayList;

    .line 93
    .line 94
    const/4 v13, 0x2

    .line 95
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v12, v9, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    iget-object v7, v7, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombination;->limits:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    const/4 v12, 0x0

    .line 114
    :goto_2
    if-ge v12, v10, :cond_2

    .line 115
    .line 116
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    add-int/lit8 v12, v12, 0x1

    .line 121
    .line 122
    check-cast v13, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;

    .line 123
    .line 124
    new-instance v14, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;

    .line 125
    .line 126
    invoke-direct {v14}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v15, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v15, v14, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/ArrayList;

    .line 135
    .line 136
    iget v15, v13, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->maxIfaces:I

    .line 137
    .line 138
    iput v15, v14, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 139
    .line 140
    iget-object v13, v13, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipIfaceCombinationLimit;->types:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    const/4 v5, 0x0

    .line 147
    :goto_3
    if-ge v5, v15, :cond_0

    .line 148
    .line 149
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v16

    .line 153
    add-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    check-cast v16, Ljava/lang/Integer;

    .line 156
    .line 157
    move/from16 p1, v11

    .line 158
    .line 159
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    move-object/from16 v16, v1

    .line 164
    .line 165
    iget-object v1, v14, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/ArrayList;

    .line 166
    .line 167
    move-object/from16 v17, v2

    .line 168
    .line 169
    sget-object v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->IFACE_TYPE_TO_CONCURRENCY_TYPE_MAP:Landroid/util/SparseIntArray;

    .line 170
    .line 171
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move/from16 v11, p1

    .line 183
    .line 184
    move-object/from16 v1, v16

    .line 185
    .line 186
    move-object/from16 v2, v17

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_0
    move-object/from16 v16, v1

    .line 190
    .line 191
    move-object/from16 v17, v2

    .line 192
    .line 193
    move/from16 p1, v11

    .line 194
    .line 195
    iget-object v1, v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;

    .line 201
    .line 202
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v2, Ljava/util/ArrayList;

    .line 206
    .line 207
    iget-object v5, v14, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    .line 211
    .line 212
    iput-object v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/ArrayList;

    .line 213
    .line 214
    iget v5, v14, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 215
    .line 216
    iput v5, v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 217
    .line 218
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_1
    iget-object v2, v9, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :goto_4
    move/from16 v11, p1

    .line 235
    .line 236
    move-object/from16 v1, v16

    .line 237
    .line 238
    move-object/from16 v2, v17

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_2
    move-object/from16 v16, v1

    .line 242
    .line 243
    move-object/from16 v17, v2

    .line 244
    .line 245
    iget-object v1, v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$ChipMode;->availableCombinations:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-object/from16 v1, v16

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_3
    move-object/from16 v16, v1

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_4
    return-object v0
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p3, "Cannot call "

    .line 8
    .line 9
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " because mWifiChip is null"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "SemWifiChipHidlImpl"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public configureChip(I)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda14;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 6
    .line 7
    .line 8
    const-string p1, "configureChip"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public createNanIface()Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "createNanIface"

    .line 9
    .line 10
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public createP2pIface()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "createP2pIface"

    .line 10
    .line 11
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;

    .line 16
    .line 17
    return-object p0
.end method

.method public createStaIface()Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "createStaIface"

    .line 9
    .line 10
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public enableDebugErrorAlerts(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public enableStaChannelForPeerNetwork(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public flushRingBufferToFile()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public forceDumpToDebugRingBuffer(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
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
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "getAvailableModes"

    .line 9
    .line 10
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 16
    .line 17
    .line 18
    const-string v2, "getCapabilitiesBeforeIfacesExist"

    .line 19
    .line 20
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 25
    .line 26
    return-object p0
.end method

.method public getDebugHostWakeReasonStats()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getDebugRingBuffersStatus()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getFeatureSet()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
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
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 10
    .line 11
    .line 12
    const-string v2, "getId"

    .line 13
    .line 14
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
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
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 16
    .line 17
    .line 18
    const-string v2, "getMode"

    .line 19
    .line 20
    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$Response;

    .line 25
    .line 26
    return-object p0
.end method

.method public getNanIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const-string v1, "getNanIface"

    .line 9
    .line 10
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "getNanIfaceNames"

    .line 9
    .line 10
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public getP2pIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIface;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const-string v1, "getP2pIface"

    .line 9
    .line 10
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "getP2pIfaceNames"

    .line 9
    .line 10
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const-string v1, "getStaIface"

    .line 9
    .line 10
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "getStaIfaceNames"

    .line 10
    .line 11
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "getSupportedRadioCombinations"

    .line 9
    .line 10
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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

.method public getUsableChannels(III)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getWifiChipCapabilities()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method protected getWifiChipV1_5Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method protected getWifiChipV1_6Mockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->mWifiChip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public removeApIface(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeApIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeNanIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeP2pIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "removeStaIface"

    .line 10
    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->validateAndCall(Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

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
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public requestDriverDebugDump()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public requestFirmwareDebugDump()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public resetTxPowerScenario()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public selectTxPowerScenario(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setAfcChannelAllowance()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setCountryCode([B)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setLatencyMode(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setMloMode(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setMultiStaPrimaryConnection(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public setMultiStaUseCase(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public stopLoggingToDebugRingBuffer()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method wifiFeatureMaskFromChipCapabilities(I)I
    .locals 7

    .line 1
    const/4 p0, 0x0

    .line 2
    move v0, p0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    sget-object v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->sChipFeatureCapabilityTranslation:[[J

    .line 5
    .line 6
    array-length v3, v2

    .line 7
    if-ge v0, v3, :cond_1

    .line 8
    .line 9
    int-to-long v3, p1

    .line 10
    aget-object v2, v2, v0

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    aget-wide v5, v2, v5

    .line 14
    .line 15
    and-long/2addr v3, v5

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    cmp-long v3, v3, v5

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    int-to-long v3, v1

    .line 23
    aget-wide v1, v2, p0

    .line 24
    .line 25
    or-long/2addr v1, v3

    .line 26
    long-to-int v1, v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method wifiFeatureMaskFromChipCapabilities_1_3(I)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->wifiFeatureMaskFromChipCapabilities(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    const/4 p0, 0x0

    .line 7
    move v2, p0

    .line 8
    :goto_0
    sget-object v3, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->sChipFeatureCapabilityTranslation13:[[J

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    if-ge v2, v4, :cond_1

    .line 12
    .line 13
    int-to-long v4, p1

    .line 14
    aget-object v3, v3, v2

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    aget-wide v6, v3, v6

    .line 18
    .line 19
    and-long/2addr v4, v6

    .line 20
    const-wide/16 v6, 0x0

    .line 21
    .line 22
    cmp-long v4, v4, v6

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    aget-wide v3, v3, p0

    .line 27
    .line 28
    or-long/2addr v0, v3

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-wide v0
.end method

.method wifiFeatureMaskFromChipCapabilities_1_5(I)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->wifiFeatureMaskFromChipCapabilities_1_3(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 p0, 0x0

    .line 6
    move v2, p0

    .line 7
    :goto_0
    sget-object v3, Lcom/samsung/android/server/wifi/halclient/SemWifiChipHidlImpl;->sChipFeatureCapabilityTranslation15:[[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    if-ge v2, v4, :cond_1

    .line 11
    .line 12
    int-to-long v4, p1

    .line 13
    aget-object v3, v3, v2

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    aget-wide v6, v3, v6

    .line 17
    .line 18
    and-long/2addr v4, v6

    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    cmp-long v4, v4, v6

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    aget-wide v3, v3, p0

    .line 26
    .line 27
    or-long/2addr v0, v3

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-wide v0
.end method
