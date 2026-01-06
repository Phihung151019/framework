.class public Lcom/android/internal/telephony/RILUtils;
.super Ljava/lang/Object;
.source "RILUtils.java"


# static fields
.field public static final blacklist CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field public static final blacklist CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field public static final blacklist RADIO_POWER_FAILURE_BUGREPORT_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b31"

.field public static final blacklist RADIO_POWER_FAILURE_NO_RF_CALIBRATION_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b33"

.field public static final blacklist RADIO_POWER_FAILURE_RF_HARDWARE_ISSUE_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b32"

.field private static final blacklist WRAPPER_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$05oZDQ4pEbhVccNbTBTHlrKjxT8(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .locals 6

    .line 6176
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$489dls8JjNqs1jh4_IXKBy7isA4(I)[Ljava/lang/String;
    .locals 0

    .line 6137
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$EiZv5dUB6WBuB3zEzhy1t9df3TM(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->accessNetworkTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$GUTKvErD4I1WFow2UTwnumSYxNg(Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;)Landroid/telephony/data/RouteSelectionDescriptor;
    .locals 6

    .line 3837
    new-instance v0, Landroid/telephony/data/RouteSelectionDescriptor;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    iget-object v2, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    .line 3838
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;->value()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/OptionalSscMode;->value()B

    move-result v3

    iget-object v4, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    .line 3839
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda18;

    invoke-direct {v5}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda18;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 3840
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Landroid/telephony/data/RouteSelectionDescriptor;-><init>(IIILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$HLtq3Kjh_dUF5Im6FpqRmcIjytM(I)[Ljava/lang/String;
    .locals 0

    .line 6138
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$MT-2XX3MvGTYa2Jdb1l8oNH5h0k(Landroid/hardware/radio/V1_6/UrspRule;)Landroid/telephony/data/UrspRule;
    .locals 4

    .line 3823
    new-instance v0, Landroid/telephony/data/UrspRule;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    iget-object v2, p0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    .line 3824
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda19;-><init>()V

    .line 3825
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda20;-><init>()V

    .line 3834
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3835
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    .line 3836
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda21;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda21;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3841
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/UrspRule;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$N16-hOfOn-OEgvbGiJrylGpNC38(I)[Ljava/lang/String;
    .locals 0

    .line 6181
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$P096LQC0s39VamjJFG9j66WXKWc(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .locals 2

    .line 3827
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalSlicingConfig: Failed to convert traffic descriptor. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XlIvq-g8LzbUO3QVf0C0P1fyIow(I)[Ljava/lang/String;
    .locals 0

    .line 6162
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$_vczXtbvhvgz4mTWZ4kti4vQUds(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .locals 6

    .line 6157
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$aqAZ5EYDvKBjEFhVkBE57ecEDwU(I)[Ljava/lang/String;
    .locals 0

    .line 6163
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$c-LBp1owKUfgdfpwCiuS39WfKlY(I)[Ljava/lang/String;
    .locals 0

    .line 6139
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$kvVOXGcw27TVyHyV3iGor3sDPls(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .locals 6

    .line 3549
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$oPd9vSCr2k4yfqTS0cvlBeeKtZ8(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerSession(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qxlg4AB1nuab5AHG8WOkH-kPL8Y(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .locals 6

    .line 3531
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rAoIMhzEu9pXh4S_BumdDRhSnaE(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rsMOFH2_k4e4LocmwDDzbszFExQ(I)[Ljava/lang/String;
    .locals 0

    .line 6136
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ruoivzIxmgjlfcoXaO-7e-bdxfQ(I)[Ljava/lang/String;
    .locals 0

    .line 6161
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xWMtVR34INPCePidDeGEW-Lsarc(I)[Ljava/lang/String;
    .locals 0

    .line 6179
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ze66bxoveJUsW3Fcxswyqv1TG6s(I)[Ljava/lang/String;
    .locals 0

    .line 6180
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 447
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/RILUtils;->WRAPPER_CLASSES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist IsApAssistSupported()Z
    .locals 5

    .line 914
    const-string v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 915
    const-string v2, "ro.build.version.release_or_codename"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    .line 918
    const-string v0, "UpsideDownCake"

    .line 919
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    const-string v0, "ro.telephony.iwlan_operation_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string v2, "AP-assisted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    return v1

    :cond_1
    return v4
.end method

.method private static blacklist accessNetworkTypeToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 4920
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4919
    :pswitch_0
    const-string p0, "NGRAN"

    return-object p0

    .line 4918
    :pswitch_1
    const-string p0, "IWLAN"

    return-object p0

    .line 4917
    :pswitch_2
    const-string p0, "CDMA2000"

    return-object p0

    .line 4916
    :pswitch_3
    const-string p0, "EUTRAN"

    return-object p0

    .line 4915
    :pswitch_4
    const-string p0, "UTRAN"

    return-object p0

    .line 4914
    :pswitch_5
    const-string p0, "GERAN"

    return-object p0

    .line 4913
    :pswitch_6
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist accessNetworkTypesToString([I)Ljava/lang/String;
    .locals 3

    .line 4899
    array-length v0, p0

    .line 4900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_0

    .line 4902
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda16;-><init>()V

    .line 4903
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 4904
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4902
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4906
    :cond_0
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4907
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 5031
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 5032
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 5061
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5063
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static blacklist convertAidlCarrierInfoList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/sim/CarrierInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    .line 4338
    const-string v0, "convertAidlCarrierInfoList received NULL carrierInfos"

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v3, 0x0

    .line 4341
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 4342
    aget-object v4, v0, v3

    iget-object v6, v4, Landroid/hardware/radio/sim/CarrierInfo;->mcc:Ljava/lang/String;

    .line 4343
    iget-object v7, v4, Landroid/hardware/radio/sim/CarrierInfo;->mnc:Ljava/lang/String;

    .line 4344
    iget-object v8, v4, Landroid/hardware/radio/sim/CarrierInfo;->spn:Ljava/lang/String;

    .line 4345
    iget-object v9, v4, Landroid/hardware/radio/sim/CarrierInfo;->gid1:Ljava/lang/String;

    .line 4346
    iget-object v10, v4, Landroid/hardware/radio/sim/CarrierInfo;->gid2:Ljava/lang/String;

    .line 4347
    iget-object v11, v4, Landroid/hardware/radio/sim/CarrierInfo;->imsiPrefix:Ljava/lang/String;

    .line 4348
    iget-object v12, v4, Landroid/hardware/radio/sim/CarrierInfo;->iccid:Ljava/lang/String;

    .line 4349
    iget-object v13, v4, Landroid/hardware/radio/sim/CarrierInfo;->impi:Ljava/lang/String;

    .line 4350
    iget-object v4, v4, Landroid/hardware/radio/sim/CarrierInfo;->ehplmn:Ljava/util/List;

    .line 4351
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 4353
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_2

    .line 4354
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/radio/sim/Plmn;

    iget-object v15, v15, Landroid/hardware/radio/sim/Plmn;->mcc:Ljava/lang/String;

    .line 4355
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/hardware/radio/sim/Plmn;

    iget-object v2, v2, Landroid/hardware/radio/sim/Plmn;->mnc:Ljava/lang/String;

    .line 4356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 4359
    :cond_1
    const-string v0, "convertAidlCarrierInfoList ehplmList is NULL"

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    .line 4361
    :cond_2
    new-instance v5, Landroid/telephony/CarrierInfo;

    invoke-direct/range {v5 .. v14}, Landroid/telephony/CarrierInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 4363
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static blacklist convertAidlCarrierInfoListToHalCarrierList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/sim/CarrierInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    .line 4384
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4385
    iget-object v5, v3, Landroid/hardware/radio/sim/CarrierInfo;->mcc:Ljava/lang/String;

    .line 4386
    iget-object v6, v3, Landroid/hardware/radio/sim/CarrierInfo;->mnc:Ljava/lang/String;

    .line 4387
    iget-object v7, v3, Landroid/hardware/radio/sim/CarrierInfo;->spn:Ljava/lang/String;

    .line 4388
    iget-object v8, v3, Landroid/hardware/radio/sim/CarrierInfo;->imsiPrefix:Ljava/lang/String;

    .line 4389
    iget-object v9, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid1:Ljava/lang/String;

    .line 4390
    iget-object v10, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid2:Ljava/lang/String;

    .line 4391
    new-instance v4, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v4 .. v10}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static blacklist convertAidlSimLockMultiSimPolicy(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertAidlSimTypeInfo([Landroid/hardware/radio/config/SimTypeInfo;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/config/SimTypeInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/SimTypeInfo;",
            ">;"
        }
    .end annotation

    .line 6319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    .line 6321
    const-string p0, "convertAidlSimTypeInfo received NULL simTypeInfos"

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    return-object v0

    .line 6324
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 6325
    new-instance v4, Lcom/android/internal/telephony/uicc/SimTypeInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/SimTypeInfo;-><init>()V

    .line 6326
    iget v5, v3, Landroid/hardware/radio/config/SimTypeInfo;->supportedSimTypes:I

    iput v5, v4, Lcom/android/internal/telephony/uicc/SimTypeInfo;->mSupportedSimTypes:I

    .line 6327
    iget v3, v3, Landroid/hardware/radio/config/SimTypeInfo;->currentSimType:I

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/SimTypeInfo;->setCurrentSimType(I)V

    .line 6328
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 3

    .line 5896
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5904
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertCellularIdentifierDisclosure(Landroid/hardware/radio/network/CellularIdentifierDisclosure;)Landroid/telephony/CellularIdentifierDisclosure;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6295
    :cond_0
    new-instance v0, Landroid/telephony/CellularIdentifierDisclosure;

    iget v1, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->protocolMessage:I

    iget v2, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->identifier:I

    iget-object v3, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->plmn:Ljava/lang/String;

    iget-boolean p0, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->isEmergency:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/CellularIdentifierDisclosure;-><init>(IILjava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist convertDataCallResultToMultiMtu(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6095
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6096
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6098
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6100
    instance-of v5, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-eqz v5, :cond_7

    .line 6101
    check-cast v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 6103
    iget v5, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 6104
    iget v7, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v7

    .line 6105
    iget v9, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 6106
    iget v10, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 6107
    iget-object v11, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-static {v11}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v11

    .line 6108
    iget-object v12, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 6109
    iget-object v13, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "\\s+"

    if-nez v13, :cond_1

    .line 6110
    iget-object v13, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_1
    move-object v13, v1

    .line 6112
    :goto_0
    iget-object v15, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 6113
    iget-object v15, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    goto :goto_1

    :cond_2
    move-object v15, v1

    move-object/from16 v16, v15

    .line 6115
    :goto_1
    iget-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6116
    iget-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object/from16 v1, v16

    .line 6118
    :goto_2
    iget-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 6119
    iget-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object/from16 v6, v16

    .line 6121
    :goto_3
    iget v0, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    if-eqz v13, :cond_5

    .line 6123
    array-length v14, v13

    move/from16 p0, v0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_6

    aget-object v18, v13, v0

    move/from16 v19, v0

    .line 6124
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v19, 0x1

    goto :goto_4

    :cond_5
    move/from16 p0, v0

    :cond_6
    move v13, v9

    move-object v9, v2

    move-object v2, v15

    move v15, v10

    move-object v10, v12

    move v12, v13

    move/from16 v14, p0

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object v13, v6

    move v4, v11

    move-object/from16 v20, v16

    const/16 v21, 0x0

    move v3, v14

    move-object v6, v1

    move v11, v5

    const/16 p0, 0x0

    move v1, v3

    goto/16 :goto_8

    :cond_7
    move-object/from16 v16, v1

    .line 6127
    instance-of v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    if-eqz v1, :cond_9

    .line 6128
    check-cast v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 6130
    iget v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 6131
    iget v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v1

    .line 6132
    iget v9, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 6133
    iget v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 6134
    iget v11, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 6135
    iget-object v12, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 6136
    iget-object v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 6137
    iget-object v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;

    invoke-direct {v13}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, [Ljava/lang/String;

    .line 6138
    iget-object v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;

    invoke-direct {v13}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 6139
    iget-object v13, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda7;

    invoke-direct {v14}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 6140
    iget v0, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    const v14, 0xffff

    and-int/2addr v14, v0

    shr-int/lit8 v0, v0, 0x10

    .line 6142
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 p0, v0

    if-eqz v1, :cond_8

    .line 6144
    array-length v0, v1

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_8

    aget-object v20, v19, v1

    move/from16 v21, v0

    .line 6145
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v21

    goto :goto_5

    :cond_8
    move v1, v9

    move-object v9, v2

    move-object v2, v15

    move v15, v10

    move-object v10, v12

    move v12, v1

    move/from16 v1, p0

    move-object/from16 v19, v3

    move-object/from16 v20, v16

    move/from16 v3, v18

    const/16 p0, 0x0

    const/16 v21, 0x0

    :goto_6
    move-object/from16 v18, v4

    move v4, v11

    move v11, v5

    goto/16 :goto_8

    .line 6148
    :cond_9
    instance-of v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    if-eqz v1, :cond_a

    .line 6149
    check-cast v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    .line 6151
    iget v5, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 6152
    iget v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v1

    .line 6153
    iget v9, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 6154
    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 6155
    iget v11, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 6156
    iget-object v12, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 6157
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 6159
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 6161
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    .line 6162
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 6163
    iget-object v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda11;

    invoke-direct {v13}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 6164
    iget v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    iget v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 6165
    iget v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 6166
    iget v0, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    move/from16 p0, v9

    move-object v9, v2

    move-object v2, v15

    move v15, v10

    move-object v10, v12

    move/from16 v12, p0

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move v4, v11

    move v3, v13

    move-object/from16 v20, v16

    const/16 p0, 0x0

    const/16 v21, 0x0

    move v11, v5

    move-object v13, v6

    move-object v6, v1

    move v1, v0

    goto/16 :goto_8

    .line 6167
    :cond_a
    instance-of v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    if-eqz v1, :cond_f

    .line 6168
    check-cast v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    .line 6170
    iget v5, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 6171
    iget-wide v7, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 6172
    iget v9, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 6173
    iget v10, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 6174
    iget v11, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 6175
    iget-object v12, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 6176
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 6178
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 6179
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    .line 6180
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 6181
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    .line 6182
    iget v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iget v13, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6183
    iget v13, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 6184
    iget v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    move-object/from16 p0, v1

    .line 6185
    iget-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    move/from16 v18, v1

    .line 6186
    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    move/from16 v19, v1

    .line 6188
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object v1

    move-object/from16 v20, v1

    .line 6189
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    move-object/from16 v21, v2

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 6190
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 6192
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    .line 6191
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_b

    goto :goto_7

    .line 6193
    :cond_b
    iget-object v0, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value()Landroid/hardware/radio/V1_6/SliceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_7
    move-object v2, v6

    move-object/from16 v6, p0

    move/from16 p0, v19

    move-object/from16 v19, v1

    move v1, v14

    move v14, v13

    move-object v13, v2

    move-object v2, v15

    move v15, v10

    move-object v10, v12

    move v12, v9

    move-object/from16 v9, v21

    move/from16 v21, v18

    goto/16 :goto_6

    .line 6200
    :goto_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v1

    .line 6201
    const-string v1, ", "

    move/from16 v23, v14

    if-eqz v2, :cond_c

    .line 6202
    array-length v14, v2

    move-object/from16 v24, v2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v14, :cond_c

    aget-object v0, v24, v2

    move/from16 v25, v2

    .line 6203
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 6206
    :try_start_0
    invoke-static {v2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 6207
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v27, v3

    move/from16 v26, v14

    goto :goto_a

    :catch_0
    move-exception v0

    move/from16 v26, v14

    .line 6209
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v3

    const-string v3, "Unknown dns: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_a
    add-int/lit8 v2, v25, 0x1

    move/from16 v14, v26

    move/from16 v3, v27

    goto :goto_9

    :cond_c
    move/from16 v27, v3

    .line 6215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_d

    .line 6217
    array-length v3, v6

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v3, :cond_d

    aget-object v0, v6, v14

    move/from16 v24, v3

    .line 6218
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6221
    :try_start_1
    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 6222
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v25, v6

    move/from16 v26, v14

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v25, v6

    .line 6224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v14

    const-string v14, "Unknown gateway: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v14, v26, 0x1

    move/from16 v3, v24

    move-object/from16 v6, v25

    goto :goto_b

    .line 6230
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_e

    .line 6232
    array-length v6, v13

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v6, :cond_e

    aget-object v0, v13, v14

    move/from16 v17, v6

    .line 6233
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 6237
    :try_start_2
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 6238
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v24, v13

    move/from16 v25, v14

    goto :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v24, v13

    .line 6240
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v14

    const-string v14, "Unknown pcscf: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_e
    add-int/lit8 v14, v25, 0x1

    move/from16 v6, v17

    move-object/from16 v13, v24

    goto :goto_d

    .line 6245
    :cond_e
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 6246
    invoke-virtual {v0, v11}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6247
    invoke-virtual {v0, v7, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6248
    invoke-virtual {v0, v12}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6249
    invoke-virtual {v0, v15}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6250
    invoke-virtual {v0, v4}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6251
    invoke-virtual {v0, v10}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6252
    invoke-virtual {v0, v9}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6253
    invoke-virtual {v0, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6254
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6255
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v3, v27

    .line 6256
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v14, v23

    .line 6257
    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v14, v22

    .line 6258
    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v21

    .line 6259
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, p0

    .line 6260
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v20

    .line 6261
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v3, v19

    .line 6262
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v16

    .line 6263
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v18

    .line 6264
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 6265
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    return-object v0

    .line 6195
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SetupDataCallResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    return-object v16
.end method

.method public static blacklist convertEmergencyNetworkScanTrigger([II)Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;
    .locals 3

    .line 4824
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4825
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4826
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4829
    :cond_0
    new-instance p0, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;

    invoke-direct {p0}, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;-><init>()V

    .line 4832
    iput-object v0, p0, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;->accessNetwork:[I

    .line 4833
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertEmergencyScanType(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;->scanType:I

    return-object p0
.end method

.method public static blacklist convertEmergencyScanType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist convertHalBarringInfoList(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3371
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3372
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_5/BarringInfo;

    .line 3373
    iget v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3375
    iget-object v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->getDiscriminator()B

    move-result v2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 3383
    :cond_0
    iget-object v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    .line 3384
    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->conditional()Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    move-result-object v2

    .line 3385
    iget v3, v1, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v4, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v1, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    iget-boolean v5, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    iget v6, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    iget v2, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    invoke-direct {v4, v1, v5, v6, v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3393
    :cond_1
    iget v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v3, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v1, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v4, v4}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static blacklist convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/network/BarringInfo;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3409
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3410
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 3411
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3413
    iget-object v5, v4, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    if-nez v5, :cond_0

    goto :goto_1

    .line 3418
    :cond_0
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    new-instance v6, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v7, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    iget-object v4, v4, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    iget-boolean v8, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->isBarred:Z

    iget v9, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->factor:I

    iget v4, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->timeSeconds:I

    invoke-direct {v6, v7, v8, v9, v4}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 3426
    :cond_1
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    new-instance v6, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v4, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    invoke-direct {v6, v4, v2, v2, v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static blacklist convertHalCardStatus(Landroid/hardware/radio/sim/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .locals 6

    .line 4522
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 4523
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->cardState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 4524
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->supportedMepMode:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setMultipleEnabledProfilesMode(I)V

    .line 4525
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->universalPinState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 4526
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    const/4 v1, -0x1

    .line 4528
    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4529
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->imsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4530
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->atr:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 4531
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->iccid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 4532
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->eid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 4534
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->applications:[Landroid/hardware/radio/sim/AppStatus;

    array-length v1, v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4536
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4538
    iget-object v3, p0, Landroid/hardware/radio/sim/CardStatus;->applications:[Landroid/hardware/radio/sim/AppStatus;

    aget-object v3, v3, v2

    .line 4539
    new-instance v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4540
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->appType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4541
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->appState:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4542
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->persoSubstate:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4544
    iget-object v5, v3, Landroid/hardware/radio/sim/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4545
    iget-object v5, v3, Landroid/hardware/radio/sim/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4546
    iget-boolean v5, v3, Landroid/hardware/radio/sim/AppStatus;->pin1Replaced:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4547
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->pin1:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4548
    iget v3, v3, Landroid/hardware/radio/sim/AppStatus;->pin2:I

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4549
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4551
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 4552
    iget-object p0, p0, Landroid/hardware/radio/sim/CardStatus;->slotMap:Landroid/hardware/radio/config/SlotPortMapping;

    iget v2, p0, Landroid/hardware/radio/config/SlotPortMapping;->physicalSlotId:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 4553
    iget p0, p0, Landroid/hardware/radio/config/SlotPortMapping;->portId:I

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/PortUtils;->convertFromHalPortIndex(IILcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)I

    move-result p0

    iput p0, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 4556
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    return-object v0
.end method

.method public static blacklist convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .locals 10

    .line 4440
    instance-of v0, p0, Landroid/hardware/radio/V1_5/CardStatus;

    if-eqz v0, :cond_0

    .line 4441
    check-cast p0, Landroid/hardware/radio/V1_5/CardStatus;

    .line 4442
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    iget-object v0, v0, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    goto :goto_0

    .line 4443
    :cond_0
    instance-of v0, p0, Landroid/hardware/radio/V1_0/CardStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4445
    move-object v0, p0

    check-cast v0, Landroid/hardware/radio/V1_0/CardStatus;

    move-object p0, v1

    goto :goto_0

    :cond_1
    move-object p0, v1

    move-object v0, p0

    .line 4451
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_4

    .line 4453
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->cardState:I

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 4454
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->universalPinState:I

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 4455
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    const/4 v5, -0x1

    .line 4457
    iput v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4458
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->imsSubscriptionAppIndex:I

    iput v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4459
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_2

    move v5, v4

    .line 4465
    :cond_2
    new-array v6, v5, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    .line 4467
    iget-object v7, v0, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    .line 4468
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/AppStatus;

    .line 4469
    new-instance v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4470
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4471
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4472
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4474
    iget-object v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4475
    iget-object v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4476
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v9, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    move v9, v3

    :goto_2
    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4477
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4478
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4479
    iget-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_7

    .line 4483
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 4484
    iget-object v5, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    iget-object v6, v5, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget v7, v6, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v7, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 4485
    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 4486
    iget-object v0, v6, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 4487
    iget-object v0, v6, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 4488
    iget-object v0, v5, Landroid/hardware/radio/V1_4/CardStatus;->eid:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 4489
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v0

    .line 4495
    :goto_3
    new-array v0, v4, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    move v0, v3

    :goto_4
    if-ge v0, v4, :cond_7

    .line 4497
    iget-object v5, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    .line 4498
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_5/AppStatus;

    .line 4499
    new-instance v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4500
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4501
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4502
    iget v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4504
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4505
    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4506
    iget v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_5

    :cond_6
    move v8, v3

    :goto_5
    iput-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4507
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4508
    iget-object v5, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v5, v5, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4509
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-object v1
.end method

.method public static blacklist convertHalCarrierList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4274
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4275
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 4276
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v5, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 4278
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget v2, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 4279
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_0

    move-object v6, v3

    move-object v8, v7

    :goto_1
    move-object v9, v8

    goto :goto_2

    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move-object v7, v3

    goto :goto_2

    :cond_1
    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    move-object v8, v3

    move-object v6, v7

    move-object v9, v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    move-object v9, v3

    move-object v6, v7

    move-object v8, v6

    goto :goto_2

    :cond_3
    move-object v6, v7

    move-object v8, v6

    goto :goto_1

    .line 4289
    :goto_2
    new-instance v3, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v3 .. v9}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static blacklist convertHalCarrierList([Landroid/hardware/radio/sim/Carrier;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/sim/Carrier;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 4305
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 4306
    aget-object v2, p0, v1

    iget-object v4, v2, Landroid/hardware/radio/sim/Carrier;->mcc:Ljava/lang/String;

    .line 4307
    iget-object v5, v2, Landroid/hardware/radio/sim/Carrier;->mnc:Ljava/lang/String;

    .line 4309
    iget v3, v2, Landroid/hardware/radio/sim/Carrier;->matchType:I

    .line 4310
    iget-object v2, v2, Landroid/hardware/radio/sim/Carrier;->matchData:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v6, :cond_1

    move-object v6, v2

    move-object v8, v7

    :goto_1
    move-object v9, v8

    goto :goto_2

    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move-object v7, v2

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    move-object v8, v2

    move-object v6, v7

    move-object v9, v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    move-object v9, v2

    move-object v6, v7

    move-object v8, v6

    goto :goto_2

    :cond_4
    move-object v6, v7

    move-object v8, v6

    goto :goto_1

    .line 4320
    :goto_2
    new-instance v3, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v3 .. v9}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static blacklist convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3167
    :cond_0
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    neg-int v1, v1

    iget p0, p0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    neg-int v2, p0

    iget p0, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    neg-int v3, p0

    iget p0, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    neg-int v4, p0

    iget v5, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-object v0

    .line 3166
    :cond_1
    :goto_0
    new-instance p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    return-object p0
.end method

.method public static blacklist convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3182
    :cond_0
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    iget v1, p0, Landroid/hardware/radio/network/CdmaSignalStrength;->dbm:I

    neg-int v1, v1

    iget p0, p0, Landroid/hardware/radio/network/CdmaSignalStrength;->ecio:I

    neg-int v2, p0

    iget p0, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->dbm:I

    neg-int v3, p0

    iget p0, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->ecio:I

    neg-int v4, p0

    iget v5, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->signalNoiseRatio:I

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-object v0

    .line 3181
    :cond_1
    :goto_0
    new-instance p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    return-object p0
.end method

.method public static blacklist convertHalCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 9

    .line 747
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 748
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 749
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 756
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 758
    iget-boolean v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 759
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x2

    .line 763
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 765
    :cond_1
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 768
    :goto_0
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 771
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 772
    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 773
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 774
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 775
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 776
    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    .line 777
    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 778
    new-array v6, v3, [B

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_3

    .line 780
    iget-object v8, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    if-nez v4, :cond_2

    .line 784
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v6, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 788
    :cond_3
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 790
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 791
    iget-boolean v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    int-to-byte v4, v4

    iput-byte v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 792
    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    if-gez v3, :cond_4

    move v3, v5

    .line 800
    :cond_4
    new-array v4, v3, [B

    move v6, v5

    :goto_2
    if-ge v6, v3, :cond_5

    .line 803
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 806
    :cond_5
    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 816
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gez v3, :cond_6

    move v3, v5

    .line 821
    :cond_6
    new-array v4, v3, [B

    :goto_3
    if-ge v5, v3, :cond_7

    .line 823
    iget-object v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 826
    :cond_7
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 829
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 830
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 832
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    return-object p0
.end method

.method public static blacklist convertHalCdmaSmsMessage(Landroid/hardware/radio/messaging/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 9

    .line 846
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 847
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 848
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 851
    iget-object v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iget v4, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digitMode:I

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 852
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 853
    iget-boolean v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->isNumberModeDataNetwork:Z

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 854
    iget v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberType:I

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 855
    iget v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberPlan:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 856
    iget-object v3, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    array-length v5, v3

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 857
    array-length v3, v3

    new-array v5, v3, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_1

    .line 859
    iget-object v8, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    aget-byte v8, v8, v7

    aput-byte v8, v5, v7

    if-nez v4, :cond_0

    .line 862
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v5, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 865
    :cond_1
    iput-object v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 868
    iget-object v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    iget v4, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->subaddressType:I

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 869
    iget-boolean v4, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->odd:Z

    int-to-byte v4, v4

    iput-byte v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 870
    iget-object v3, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->digits:[B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 875
    iget v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 876
    iget-boolean v4, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->isServicePresent:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 877
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    const/4 v3, 0x2

    .line 881
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_1

    .line 883
    :cond_3
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 886
    :goto_1
    iget v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 889
    iget-object p0, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->bearerData:[B

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 892
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 893
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 895
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    return-object p0
.end method

.method public static blacklist convertHalCellConnectionStatus(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2835
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 2847
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;

    move-result-object p0

    return-object p0

    .line 2841
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2839
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2845
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2843
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2837
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2776
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;

    if-eqz v1, :cond_6

    .line 2777
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentity;

    .line 2779
    iget v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    goto/16 :goto_0

    .line 2801
    :cond_1
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 2802
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2796
    :cond_2
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 2797
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2791
    :cond_3
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 2792
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2786
    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 2787
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2781
    :cond_5
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 2782
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    .line 2806
    :cond_6
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentity;

    if-eqz v1, :cond_7

    .line 2807
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentity;

    .line 2809
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->getDiscriminator()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2821
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->nr()Landroid/hardware/radio/V1_5/CellIdentityNr;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object p0

    return-object p0

    .line 2815
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->lte()Landroid/hardware/radio/V1_5/CellIdentityLte;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2813
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->cdma()Landroid/hardware/radio/V1_2/CellIdentityCdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2819
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->tdscdma()Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2817
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->wcdma()Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2811
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->gsm()Landroid/hardware/radio/V1_5/CellIdentityGsm;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;
    .locals 8

    .line 2916
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityCdma;->networkId:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityCdma;->systemId:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityCdma;->baseStationId:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityCdma;->longitude:I

    iget v5, p0, Landroid/hardware/radio/network/CellIdentityCdma;->latitude:I

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v6, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2898
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    if-eqz v1, :cond_1

    .line 2899
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 2901
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget v5, v5, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;
    .locals 10

    .line 2886
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityGsm;->lac:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityGsm;->cid:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityGsm;->arfcn:I

    .line 2887
    iget-byte v4, p0, Landroid/hardware/radio/network/CellIdentityGsm;->bsic:B

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const v4, 0x7fffffff

    :cond_0
    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v7, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2859
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    const v2, 0x7fffffff

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    .line 2860
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    .line 2862
    new-instance v4, Landroid/telephony/CellIdentityGsm;

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v6, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v7, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    .line 2863
    iget-byte v1, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    if-ne v1, v3, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    iget-object v9, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v10, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v12, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-direct/range {v4 .. v13}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v4

    .line 2866
    :cond_2
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    if-eqz v1, :cond_4

    .line 2867
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    .line 2869
    new-instance v4, Landroid/telephony/CellIdentityGsm;

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v1, v0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v7, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    .line 2870
    iget-byte v8, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    if-ne v8, v3, :cond_3

    move v8, v2

    .line 2871
    :cond_3
    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v10, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v12, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v13, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-direct/range {v4 .. v13}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v4

    :cond_4
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;
    .locals 13

    .line 2954
    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityLte;->ci:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityLte;->pci:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityLte;->tac:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityLte;->earfcn:I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityLte;->bands:[I

    iget v6, p0, Landroid/hardware/radio/network/CellIdentityLte;->bandwidth:I

    iget-object v7, p0, Landroid/hardware/radio/network/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/network/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityLte;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/hardware/radio/network/CellIdentityLte;->additionalPlmns:[Ljava/lang/String;

    .line 2956
    invoke-static {v11}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityLte;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2957
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2927
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;

    if-eqz v1, :cond_1

    .line 2928
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityLte;

    .line 2930
    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    const/4 v6, 0x0

    new-array v6, v6, [I

    move-object v7, v5

    move-object v5, v6

    iget v6, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0

    .line 2934
    :cond_1
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    if-eqz v1, :cond_2

    .line 2935
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    .line 2937
    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget v4, v4, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    iget-object v5, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    .line 2938
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    move-object v7, v6

    iget v6, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    iget-object v8, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    move-object v9, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v9, v9, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2941
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    :cond_2
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;
    .locals 12

    .line 3068
    new-instance v0, Landroid/telephony/CellIdentityNr;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityNr;->pci:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityNr;->tac:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityNr;->nrarfcn:I

    iget-object v4, p0, Landroid/hardware/radio/network/CellIdentityNr;->bands:[I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v7, p0, Landroid/hardware/radio/network/CellIdentityNr;->nci:J

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityNr;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityNr;->additionalPlmns:[Ljava/lang/String;

    .line 3070
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3043
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;

    if-eqz v1, :cond_1

    .line 3044
    check-cast p0, Landroid/hardware/radio/V1_4/CellIdentityNr;

    .line 3046
    new-instance v0, Landroid/telephony/CellIdentityNr;

    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    iget v3, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    const/4 v4, 0x0

    new-array v4, v4, [I

    iget-object v5, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v7, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 3049
    :cond_1
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    if-eqz v1, :cond_2

    .line 3050
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    .line 3052
    new-instance v0, Landroid/telephony/CellIdentityNr;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    iget v3, v3, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    iget-object v4, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    .line 3053
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    move-object v6, v5

    iget-object v5, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v7, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    move-object v9, v7

    iget-wide v7, v9, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    iget-object v9, v9, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_2
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;
    .locals 11

    .line 3030
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->lac:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->cid:I

    iget v5, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->cpid:I

    iget v6, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->uarfcn:I

    iget-object v7, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->additionalPlmns:[Ljava/lang/String;

    .line 3032
    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 3033
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3005
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    if-eqz v1, :cond_1

    .line 3006
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 3008
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    move-object v2, v1

    iget-object v1, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v3, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v5, v5, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    iget v6, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 3010
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0

    .line 3011
    :cond_1
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    if-eqz v1, :cond_2

    .line 3012
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    .line 3014
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    move-object v3, v1

    iget-object v1, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    move-object v4, v2

    iget-object v2, v4, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    move-object v5, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    move-object v6, v4

    iget v4, v6, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v6, v6, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    move-object v7, v5

    move v5, v6

    iget v6, v7, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 3017
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    :cond_2
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;
    .locals 11

    .line 2992
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->lac:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->cid:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->psc:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->uarfcn:I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->additionalPlmns:[Ljava/lang/String;

    .line 2994
    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2995
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2967
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    if-eqz v1, :cond_1

    .line 2968
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    .line 2970
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    move-object v6, v5

    iget-object v5, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0

    .line 2973
    :cond_1
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    if-eqz v1, :cond_2

    .line 2974
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    .line 2976
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    move-object v3, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    move-object v4, v2

    iget v2, v4, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    move-object v5, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    move-object v6, v4

    iget v4, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    move-object v7, v5

    iget-object v5, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2979
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    :cond_2
    return-object v0
.end method

.method private static blacklist convertHalCellInfo(Landroid/hardware/radio/network/CellInfo;J)Landroid/telephony/CellInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2727
    :cond_0
    iget v2, p0, Landroid/hardware/radio/network/CellInfo;->connectionStatus:I

    .line 2728
    iget-boolean v3, p0, Landroid/hardware/radio/network/CellInfo;->registered:Z

    .line 2729
    iget-object v1, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    return-object v0

    .line 2736
    :cond_1
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2737
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object p0

    .line 2738
    new-instance v1, Landroid/telephony/CellInfoCdma;

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/network/CellIdentityCdma;

    .line 2739
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    .line 2740
    invoke-static {v0, p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoCdma;-><init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v1

    :cond_2
    move-wide v4, p1

    .line 2760
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object p0

    .line 2761
    new-instance v1, Landroid/telephony/CellInfoNr;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/network/CellIdentityNr;

    .line 2762
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/network/NrSignalStrength;

    .line 2763
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoNr;-><init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v1

    :cond_3
    move-wide v4, p1

    .line 2743
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object p0

    .line 2744
    new-instance v1, Landroid/telephony/CellInfoLte;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/network/CellIdentityLte;

    .line 2745
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/network/LteSignalStrength;

    .line 2746
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v7

    new-instance v8, Landroid/telephony/CellConfigLte;

    invoke-direct {v8}, Landroid/telephony/CellConfigLte;-><init>()V

    invoke-direct/range {v1 .. v8}, Landroid/telephony/CellInfoLte;-><init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V

    return-object v1

    :cond_4
    move-wide v4, p1

    .line 2754
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2755
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object p0

    .line 2756
    new-instance v1, Landroid/telephony/CellInfoTdscdma;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 2757
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    .line 2758
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoTdscdma;-><init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v1

    :cond_5
    move-wide v4, p1

    .line 2748
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2749
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object p0

    .line 2750
    new-instance v1, Landroid/telephony/CellInfoWcdma;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 2751
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    .line 2752
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoWcdma;-><init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v1

    :cond_6
    move-wide v4, p1

    .line 2731
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object p0

    .line 2732
    new-instance v1, Landroid/telephony/CellInfoGsm;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/network/CellIdentityGsm;

    .line 2733
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/network/GsmSignalStrength;

    .line 2734
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoGsm;-><init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v1
.end method

.method private static blacklist convertHalCellInfo(Ljava/lang/Object;J)Landroid/telephony/CellInfo;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2540
    :cond_0
    instance-of v2, v0, Landroid/hardware/radio/V1_4/CellInfo;

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_7

    .line 2541
    check-cast v0, Landroid/hardware/radio/V1_4/CellInfo;

    .line 2543
    iget v2, v0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    .line 2544
    iget-boolean v9, v0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    .line 2545
    iget-object v10, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_6

    if-eq v10, v8, :cond_5

    if-eq v10, v7, :cond_4

    if-eq v10, v6, :cond_3

    if-eq v10, v5, :cond_2

    if-eq v10, v4, :cond_1

    return-object v1

    .line 2580
    :cond_1
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->nr()Landroid/hardware/radio/V1_4/CellInfoNr;

    move-result-object v0

    .line 2581
    iget-object v4, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->cellidentity:Landroid/hardware/radio/V1_4/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2582
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->signalStrength:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v5, v0

    move-object v8, v5

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move v7, v3

    move-object v15, v4

    :goto_0
    move-object/from16 v3, v16

    move-object v4, v3

    goto/16 :goto_1

    .line 2561
    :cond_2
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->lte()Landroid/hardware/radio/V1_4/CellInfoLte;

    move-result-object v0

    .line 2562
    iget-object v3, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2563
    iget-object v4, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v4, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v4

    .line 2564
    new-instance v5, Landroid/telephony/CellConfigLte;

    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    iget-boolean v0, v0, Landroid/hardware/radio/V1_4/CellConfigLte;->isEndcAvailable:Z

    invoke-direct {v5, v0}, Landroid/telephony/CellConfigLte;-><init>(Z)V

    move-object v0, v1

    move-object v8, v0

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    move-object v15, v13

    move-object v11, v3

    move-object v14, v4

    move-object/from16 v16, v5

    move v7, v6

    move-object v3, v15

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    goto/16 :goto_1

    .line 2574
    :cond_3
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->tdscdma()Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    move-result-object v0

    .line 2575
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2576
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v6, v0

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v13, v3

    move v7, v4

    goto :goto_0

    .line 2568
    :cond_4
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;

    move-result-object v0

    .line 2569
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2570
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v6, v0

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v12, v3

    move v7, v5

    move-object/from16 v3, v16

    move-object v5, v3

    goto :goto_1

    .line 2554
    :cond_5
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2555
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2556
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v10, v3

    move-object v3, v0

    move-object/from16 v0, v16

    goto :goto_1

    .line 2548
    :cond_6
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v0

    .line 2549
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2550
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move v7, v8

    move-object v8, v3

    move-object/from16 v3, v16

    :goto_1
    move-object/from16 v23, v0

    move-object/from16 v22, v8

    move/from16 v19, v9

    move-object/from16 v9, v16

    move-object v8, v3

    :goto_2
    move v3, v2

    goto/16 :goto_9

    .line 2586
    :cond_7
    instance-of v2, v0, Landroid/hardware/radio/V1_5/CellInfo;

    if-eqz v2, :cond_e

    .line 2587
    check-cast v0, Landroid/hardware/radio/V1_5/CellInfo;

    .line 2589
    iget v2, v0, Landroid/hardware/radio/V1_5/CellInfo;->connectionStatus:I

    .line 2590
    iget-boolean v9, v0, Landroid/hardware/radio/V1_5/CellInfo;->registered:Z

    .line 2591
    iget-object v10, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_d

    if-eq v10, v8, :cond_c

    if-eq v10, v7, :cond_b

    if-eq v10, v6, :cond_a

    if-eq v10, v5, :cond_9

    if-eq v10, v4, :cond_8

    return-object v1

    .line 2602
    :cond_8
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2603
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2604
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    :goto_3
    move-object v4, v0

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v10, v3

    move v3, v7

    move-object/from16 v7, v16

    goto/16 :goto_8

    .line 2634
    :cond_9
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v0

    .line 2635
    iget-object v4, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2636
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object v15, v4

    :goto_4
    move-object/from16 v4, v16

    goto/16 :goto_8

    .line 2610
    :cond_a
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_5/CellInfoLte;

    move-result-object v0

    .line 2611
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2612
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2613
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    :goto_5
    move-object v14, v0

    move-object v0, v1

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    move-object v15, v13

    move-object v11, v3

    move-object/from16 v16, v4

    move v3, v6

    move-object v4, v15

    move-object v6, v4

    goto/16 :goto_8

    .line 2626
    :cond_b
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 2627
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    .line 2628
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2629
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v13, v3

    move v3, v4

    goto :goto_4

    .line 2618
    :cond_c
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 2619
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    .line 2620
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2621
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    :goto_6
    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v12, v3

    move v3, v5

    move-object v5, v0

    move-object/from16 v0, v16

    goto :goto_8

    .line 2595
    :cond_d
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    .line 2596
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2597
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    :goto_7
    move v4, v8

    move-object v8, v3

    move v3, v4

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_8
    move-object/from16 v23, v0

    move-object/from16 v22, v8

    move/from16 v19, v9

    move-object/from16 v9, v16

    move-object v8, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v3

    goto/16 :goto_2

    .line 2640
    :cond_e
    instance-of v2, v0, Landroid/hardware/radio/V1_6/CellInfo;

    if-eqz v2, :cond_15

    .line 2641
    check-cast v0, Landroid/hardware/radio/V1_6/CellInfo;

    .line 2643
    iget v2, v0, Landroid/hardware/radio/V1_6/CellInfo;->connectionStatus:I

    .line 2644
    iget-boolean v9, v0, Landroid/hardware/radio/V1_6/CellInfo;->registered:Z

    .line 2645
    iget-object v10, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_14

    if-eq v10, v8, :cond_13

    if-eq v10, v7, :cond_12

    if-eq v10, v6, :cond_11

    if-eq v10, v5, :cond_10

    if-eq v10, v4, :cond_f

    return-object v1

    .line 2656
    :cond_f
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2657
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2658
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    goto/16 :goto_3

    .line 2688
    :cond_10
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v0

    .line 2689
    iget-object v4, v0, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2690
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object v15, v4

    goto/16 :goto_4

    .line 2664
    :cond_11
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v0

    .line 2665
    iget-object v3, v0, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2666
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2667
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    goto/16 :goto_5

    .line 2680
    :cond_12
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    .line 2681
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    .line 2682
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2683
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v13, v3

    move v3, v4

    goto/16 :goto_4

    .line 2672
    :cond_13
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    .line 2673
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    .line 2674
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2675
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    goto/16 :goto_6

    .line 2649
    :cond_14
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    .line 2650
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2651
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    goto/16 :goto_7

    :goto_9
    packed-switch v7, :pswitch_data_0

    return-object v1

    .line 2711
    :pswitch_0
    new-instance v2, Landroid/telephony/CellInfoNr;

    move-object v8, v6

    move-object v7, v15

    move/from16 v4, v19

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoNr;-><init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v2

    :pswitch_1
    move/from16 v4, v19

    .line 2708
    new-instance v2, Landroid/telephony/CellInfoTdscdma;

    move-object v8, v5

    move-object v7, v13

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoTdscdma;-><init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v2

    .line 2706
    :pswitch_2
    new-instance v2, Landroid/telephony/CellInfoWcdma;

    move-wide/from16 v5, p1

    move-object v8, v4

    move-object v7, v12

    move/from16 v4, v19

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoWcdma;-><init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v2

    :pswitch_3
    move/from16 v4, v19

    .line 2704
    new-instance v2, Landroid/telephony/CellInfoLte;

    move-wide/from16 v5, p1

    move-object v7, v11

    move-object v8, v14

    invoke-direct/range {v2 .. v9}, Landroid/telephony/CellInfoLte;-><init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V

    return-object v2

    :pswitch_4
    move/from16 v4, v19

    .line 2702
    new-instance v2, Landroid/telephony/CellInfoCdma;

    move-wide/from16 v5, p1

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoCdma;-><init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v2

    :pswitch_5
    move/from16 v4, v19

    .line 2700
    new-instance v17, Landroid/telephony/CellInfoGsm;

    move-wide/from16 v20, p1

    move/from16 v18, v3

    invoke-direct/range {v17 .. v23}, Landroid/telephony/CellInfoGsm;-><init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v17

    :cond_15
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 2491
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2492
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2493
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2494
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 2495
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfo(Ljava/lang/Object;J)Landroid/telephony/CellInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static blacklist convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/network/CellInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 2507
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2508
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2509
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2510
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 2511
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfo(Landroid/hardware/radio/network/CellInfo;J)Landroid/telephony/CellInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static blacklist convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .locals 3

    .line 3348
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->getDiscriminator()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3350
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->csgInfo()Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_1

    return-object v2

    .line 3352
    :cond_1
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-object v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget p0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method private static blacklist convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3359
    :cond_0
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v1, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-object v2, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget p0, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist convertHalConnectionFailureReason(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const p0, 0xffff

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertHalDataCallResult(Landroid/hardware/radio/data/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;
    .locals 14

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 3655
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3656
    iget-object v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->addresses:[Landroid/hardware/radio/data/LinkAddress;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3657
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 3658
    iget-object v7, v6, Landroid/hardware/radio/data/LinkAddress;->address:Ljava/lang/String;

    iget v8, v6, Landroid/hardware/radio/data/LinkAddress;->addressProperties:I

    iget-wide v9, v6, Landroid/hardware/radio/data/LinkAddress;->deprecationTime:J

    iget-wide v11, v6, Landroid/hardware/radio/data/LinkAddress;->expirationTime:J

    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3662
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3663
    iget-object v5, p0, Landroid/hardware/radio/data/SetupDataCallResult;->dnses:[Ljava/lang/String;

    const-string v6, "RILUtils"

    if-eqz v5, :cond_2

    .line 3664
    array-length v7, v5

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v0, v5, v8

    .line 3665
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 3668
    :try_start_0
    invoke-static {v9}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3669
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3671
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown dns: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3675
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3676
    iget-object v7, p0, Landroid/hardware/radio/data/SetupDataCallResult;->gateways:[Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 3677
    array-length v8, v7

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_3

    aget-object v0, v7, v9

    .line 3678
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3681
    :try_start_1
    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3682
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 3684
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown gateway: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3688
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3689
    iget-object v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pcscf:[Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 3690
    array-length v9, v8

    move v10, v3

    :goto_5
    if-ge v10, v9, :cond_4

    aget-object v0, v8, v10

    .line 3691
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 3694
    :try_start_2
    invoke-static {v11}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3695
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 3697
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown pcscf: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3701
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3702
    iget-object v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->qosSessions:[Landroid/hardware/radio/data/QosSession;

    if-eqz v0, :cond_5

    .line 3703
    array-length v8, v0

    move v9, v3

    :goto_7
    if-ge v9, v8, :cond_5

    aget-object v10, v0, v9

    .line 3704
    invoke-static {v10}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerSession(Landroid/hardware/radio/data/QosSession;)Landroid/telephony/data/QosBearerSession;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 3707
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3708
    iget-object v9, p0, Landroid/hardware/radio/data/SetupDataCallResult;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    if-eqz v9, :cond_6

    .line 3709
    array-length v10, v9

    :goto_8
    if-ge v3, v10, :cond_6

    aget-object v0, v9, v3

    .line 3711
    :try_start_3
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 3713
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertHalDataCallResult: Failed to convert traffic descriptor. e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3718
    :cond_6
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cause:I

    .line 3719
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-wide v9, p0, Landroid/hardware/radio/data/SetupDataCallResult;->suggestedRetryTime:J

    .line 3720
    invoke-virtual {v0, v9, v10}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cid:I

    .line 3721
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->active:I

    .line 3722
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->type:I

    .line 3723
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-object v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3724
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3725
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3726
    invoke-virtual {v0, v4}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3727
    invoke-virtual {v0, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3728
    invoke-virtual {v0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 3729
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    .line 3730
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 3731
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-byte v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->handoverFailureMode:B

    .line 3732
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pduSessionId:I

    .line 3733
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/data/Qos;

    .line 3734
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3735
    invoke-virtual {v0, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3736
    iget-object p0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/data/SliceInfo;

    if-nez p0, :cond_7

    goto :goto_a

    .line 3737
    :cond_7
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    .line 3736
    :goto_a
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object p0

    .line 3738
    invoke-virtual {p0, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object p0

    .line 3739
    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3487
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3490
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3492
    instance-of v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 3493
    check-cast v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 3495
    iget v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 3496
    iget v7, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v7

    .line 3497
    iget v9, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 3498
    iget v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 3499
    iget v11, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 3500
    iget-object v12, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3501
    iget-object v13, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    new-array v14, v6, [Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 3502
    iget-object v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 3503
    iget-object v15, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3504
    iget-object v15, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    move-object/from16 p0, v1

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3506
    iget v15, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    const v17, 0xffff

    and-int v6, v15, v17

    shr-int/lit8 v15, v15, 0x10

    if-nez v11, :cond_1

    .line 3509
    iput v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    move-object/from16 v17, v1

    goto :goto_0

    :cond_1
    move-object/from16 v17, v1

    const/4 v1, 0x1

    if-ne v11, v1, :cond_2

    .line 3511
    iput v15, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v11, v1, :cond_3

    .line 3513
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    .line 3516
    :cond_3
    :goto_0
    iget v0, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    if-eqz v13, :cond_4

    .line 3518
    array-length v1, v13

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_4

    aget-object v15, v13, v6

    .line 3519
    invoke-static {v15}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, p0

    move v6, v0

    move v13, v6

    move v15, v13

    move-object/from16 p0, v4

    move-object/from16 v19, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_2
    move-wide/from16 v28, v7

    move-object v7, v2

    move v8, v11

    move-object v2, v12

    move-object v11, v14

    move v12, v9

    move v14, v10

    move v9, v5

    move-wide/from16 v4, v28

    goto/16 :goto_6

    :cond_5
    move-object/from16 v16, v1

    .line 3522
    instance-of v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    if-eqz v1, :cond_6

    .line 3523
    check-cast v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    .line 3525
    iget v5, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 3526
    iget v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v1

    .line 3527
    iget v9, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 3528
    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 3529
    iget v11, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 3530
    iget-object v12, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3531
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3533
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 3534
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v13, v6, [Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    .line 3535
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-array v13, v6, [Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3536
    iget-object v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 3537
    iget v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    iget v15, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3538
    iget v15, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 3539
    iget v0, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    move-object/from16 v17, v3

    move-object/from16 p0, v4

    move-object v3, v6

    move-object/from16 v19, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v6, v0

    goto :goto_2

    .line 3540
    :cond_6
    instance-of v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    if-eqz v1, :cond_c

    .line 3541
    check-cast v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    .line 3543
    iget v5, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 3544
    iget-wide v7, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 3545
    iget v9, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 3546
    iget v10, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 3547
    iget v11, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 3548
    iget-object v12, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3549
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3551
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 3552
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    .line 3553
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3554
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    new-array v13, v6, [Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 3555
    iget v13, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iget v15, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3556
    iget v15, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 3557
    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    move-object/from16 p0, v1

    .line 3558
    iget-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    move/from16 v17, v1

    .line 3559
    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    move/from16 v19, v1

    .line 3560
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object v1

    move-object/from16 v20, v1

    .line 3561
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    move-object/from16 v21, v2

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3562
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3564
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    .line 3563
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    .line 3565
    :cond_7
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value()Landroid/hardware/radio/V1_6/SliceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v2

    move-object/from16 v16, v2

    .line 3566
    :goto_3
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    move-object/from16 v22, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    add-int/lit8 v24, v0, 0x1

    check-cast v23, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    .line 3568
    :try_start_0
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v23, v1

    move-object/from16 v25, v2

    goto :goto_5

    :catch_0
    move-exception v0

    move/from16 v23, v1

    .line 3570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "convertHalDataCallResult: Failed to convert traffic descriptor. e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_5
    move/from16 v1, v23

    move/from16 v0, v24

    move-object/from16 v2, v25

    goto :goto_4

    :cond_8
    move-object/from16 v1, v20

    move/from16 v20, v19

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 p0, v4

    move-object v2, v12

    move v12, v9

    move v9, v5

    move-wide v4, v7

    move v8, v11

    move-object v11, v14

    move-object/from16 v7, v21

    move v14, v10

    move/from16 v21, v17

    move-object/from16 v17, v22

    .line 3579
    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v6

    .line 3580
    const-string v6, "RILUtils"

    move/from16 v23, v15

    if-eqz v11, :cond_9

    .line 3581
    array-length v15, v11

    move-object/from16 v24, v11

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v15, :cond_9

    aget-object v0, v24, v11

    move/from16 v25, v11

    .line 3582
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 3585
    :try_start_1
    invoke-static {v11}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3586
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v27, v13

    move/from16 v26, v15

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v26, v15

    .line 3588
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v13

    const-string v13, "Unknown dns: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    add-int/lit8 v11, v25, 0x1

    move/from16 v15, v26

    move/from16 v13, v27

    goto :goto_7

    :cond_9
    move/from16 v27, v13

    .line 3594
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_a

    .line 3596
    array-length v13, v1

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v13, :cond_a

    aget-object v0, v1, v15

    move-object/from16 v24, v1

    .line 3597
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3600
    :try_start_2
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3601
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v25, v13

    move/from16 v26, v15

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v25, v13

    .line 3603
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v15

    const-string v15, "Unknown gateway: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    add-int/lit8 v15, v26, 0x1

    move-object/from16 v1, v24

    move/from16 v13, v25

    goto :goto_9

    .line 3609
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_b

    .line 3611
    array-length v13, v3

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v13, :cond_b

    aget-object v0, v3, v15

    move-object/from16 v18, v3

    .line 3612
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3615
    :try_start_3
    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3616
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v24, v13

    move/from16 v25, v15

    goto :goto_c

    :catch_3
    move-exception v0

    move/from16 v24, v13

    .line 3618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v15

    const-string v15, "Unknown pcscf: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    add-int/lit8 v15, v25, 0x1

    move-object/from16 v3, v18

    move/from16 v13, v24

    goto :goto_b

    .line 3623
    :cond_b
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 3624
    invoke-virtual {v0, v9}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3625
    invoke-virtual {v0, v4, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3626
    invoke-virtual {v0, v12}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3627
    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3628
    invoke-virtual {v0, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3629
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3630
    invoke-virtual {v0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3631
    invoke-virtual {v0, v10}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3632
    invoke-virtual {v0, v11}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3633
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v13, v27

    .line 3634
    invoke-virtual {v0, v13}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v15, v23

    .line 3635
    invoke-virtual {v0, v15}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v6, v22

    .line 3636
    invoke-virtual {v0, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v21

    .line 3637
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v20

    .line 3638
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v19

    .line 3639
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v3, v17

    .line 3640
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v16

    .line 3641
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    .line 3642
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3643
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    return-object v0

    .line 3574
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SetupDataCallResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    return-object v16
.end method

.method public static blacklist convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 4073
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4075
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4076
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist convertHalDataCallResultList([Landroid/hardware/radio/data/SetupDataCallResult;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/data/SetupDataCallResult;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 4090
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4092
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 4093
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Landroid/hardware/radio/data/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist convertHalDeregistrationReason(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist convertHalEmergencyRegResult(Landroid/hardware/radio/network/EmergencyRegResult;)Landroid/telephony/EmergencyRegistrationResult;
    .locals 11

    .line 4844
    new-instance v0, Landroid/telephony/EmergencyRegistrationResult;

    iget v1, p0, Landroid/hardware/radio/network/EmergencyRegResult;->accessNetwork:I

    iget v2, p0, Landroid/hardware/radio/network/EmergencyRegResult;->regState:I

    .line 4846
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalRegState(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/network/EmergencyRegResult;->emcDomain:I

    iget-boolean v4, p0, Landroid/hardware/radio/network/EmergencyRegResult;->isVopsSupported:Z

    iget-boolean v5, p0, Landroid/hardware/radio/network/EmergencyRegResult;->isEmcBearerSupported:Z

    iget-byte v6, p0, Landroid/hardware/radio/network/EmergencyRegResult;->nwProvidedEmc:B

    iget-byte v7, p0, Landroid/hardware/radio/network/EmergencyRegResult;->nwProvidedEmf:B

    iget-object v8, p0, Landroid/hardware/radio/network/EmergencyRegResult;->mcc:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/EmergencyRegResult;->mnc:Ljava/lang/String;

    .line 4854
    invoke-static {v8, v9}, Lcom/android/internal/telephony/RILUtils;->getCountryCodeForMccMnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/EmergencyRegistrationResult;-><init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;
    .locals 3

    if-nez p0, :cond_0

    .line 3127
    new-instance p0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    return-object p0

    .line 3128
    :cond_0
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget v1, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    .line 3129
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->timingAdvance:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 3131
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_1

    .line 3132
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3133
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_1
    return-object v0
.end method

.method public static blacklist convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;
    .locals 3

    if-nez p0, :cond_0

    .line 3145
    new-instance p0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    return-object p0

    .line 3146
    :cond_0
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget v1, p0, Landroid/hardware/radio/network/GsmSignalStrength;->signalStrength:I

    .line 3147
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/GsmSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/network/GsmSignalStrength;->timingAdvance:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 3149
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_1

    .line 3150
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3151
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_1
    return-object v0
.end method

.method public static blacklist convertHalHardwareConfigList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 2315
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2318
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/radio/V1_0/HardwareConfig;

    .line 2319
    iget v5, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->type:I

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2329
    new-instance v6, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2330
    iget-object v5, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v7, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget-object v4, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->sim:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/HardwareConfigSim;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 2334
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardware type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v6, v4

    .line 2322
    new-instance v4, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2323
    iget-object v5, v6, Landroid/hardware/radio/V1_0/HardwareConfig;->modem:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;

    move-object v7, v5

    .line 2324
    iget-object v5, v6, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v6, v6, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    move-object v8, v7

    iget v7, v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rilModel:I

    move-object v9, v8

    iget v8, v9, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rat:I

    move-object v10, v9

    iget v9, v10, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxVoice:I

    move-object v11, v10

    iget v10, v11, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxData:I

    iget v11, v11, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxStandby:I

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    move-object v6, v4

    .line 2338
    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static blacklist convertHalHardwareConfigList([Landroid/hardware/radio/modem/HardwareConfig;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/modem/HardwareConfig;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 2350
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2353
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 2354
    iget v5, v4, Landroid/hardware/radio/modem/HardwareConfig;->type:I

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2364
    new-instance v6, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2365
    iget-object v5, v4, Landroid/hardware/radio/modem/HardwareConfig;->uuid:Ljava/lang/String;

    iget v7, v4, Landroid/hardware/radio/modem/HardwareConfig;->state:I

    iget-object v4, v4, Landroid/hardware/radio/modem/HardwareConfig;->sim:[Landroid/hardware/radio/modem/HardwareConfigSim;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/hardware/radio/modem/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 2369
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardware type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v6, v4

    .line 2357
    new-instance v4, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2358
    iget-object v5, v6, Landroid/hardware/radio/modem/HardwareConfig;->modem:[Landroid/hardware/radio/modem/HardwareConfigModem;

    aget-object v5, v5, v2

    move-object v7, v5

    .line 2359
    iget-object v5, v6, Landroid/hardware/radio/modem/HardwareConfig;->uuid:Ljava/lang/String;

    iget v6, v6, Landroid/hardware/radio/modem/HardwareConfig;->state:I

    move-object v8, v7

    iget v7, v8, Landroid/hardware/radio/modem/HardwareConfigModem;->rilModel:I

    move-object v9, v8

    iget v8, v9, Landroid/hardware/radio/modem/HardwareConfigModem;->rat:I

    move-object v10, v9

    iget v9, v10, Landroid/hardware/radio/modem/HardwareConfigModem;->maxVoiceCalls:I

    move-object v11, v10

    iget v10, v11, Landroid/hardware/radio/modem/HardwareConfigModem;->maxDataCalls:I

    iget v11, v11, Landroid/hardware/radio/modem/HardwareConfigModem;->maxStandby:I

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    move-object v6, v4

    .line 2373
    :goto_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static blacklist convertHalKeepaliveStatusCode(I)I
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertHalLinkCapacityEstimate(Landroid/hardware/radio/network/LinkCapacityEstimate;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/network/LinkCapacityEstimate;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 2463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2464
    iget v1, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 2465
    iget v2, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2466
    iget v4, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    if-eq v4, v3, :cond_0

    sub-int/2addr v1, v4

    :cond_0
    if-eq v2, v3, :cond_1

    .line 2471
    iget v4, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    if-eq v4, v3, :cond_1

    sub-int/2addr v2, v4

    .line 2476
    :cond_1
    new-instance v3, Landroid/telephony/LinkCapacityEstimate;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2478
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget v2, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static blacklist convertHalLinkCapacityEstimate(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 2425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    .line 2427
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    if-eqz v1, :cond_1

    .line 2428
    check-cast p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    .line 2430
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget v2, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->downlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2432
    :cond_1
    instance-of v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    if-eqz v1, :cond_4

    .line 2433
    check-cast p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    .line 2435
    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 2436
    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 2437
    iget v4, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    if-eq v4, v3, :cond_2

    sub-int/2addr v1, v4

    :cond_2
    if-eq v2, v3, :cond_3

    .line 2442
    iget v4, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    if-eq v4, v3, :cond_3

    sub-int/2addr v2, v4

    .line 2447
    :cond_3
    new-instance v3, Landroid/telephony/LinkCapacityEstimate;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2449
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static blacklist convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;
    .locals 8

    .line 3223
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    iget v1, p0, Landroid/hardware/radio/network/LteSignalStrength;->signalStrength:I

    .line 3224
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v1

    .line 3225
    iget v2, p0, Landroid/hardware/radio/network/LteSignalStrength;->rsrp:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    neg-int v2, v2

    .line 3226
    :cond_0
    iget v4, p0, Landroid/hardware/radio/network/LteSignalStrength;->rsrq:I

    if-eq v4, v3, :cond_1

    neg-int v4, v4

    :cond_1
    move v3, v4

    iget v4, p0, Landroid/hardware/radio/network/LteSignalStrength;->rssnr:I

    .line 3227
    invoke-static {v4}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v4

    iget v5, p0, Landroid/hardware/radio/network/LteSignalStrength;->cqiTableIndex:I

    iget v6, p0, Landroid/hardware/radio/network/LteSignalStrength;->cqi:I

    iget v7, p0, Landroid/hardware/radio/network/LteSignalStrength;->timingAdvance:I

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static blacklist convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3193
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    const v2, 0x7fffffff

    if-eqz v1, :cond_3

    .line 3194
    check-cast p0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 3196
    new-instance v3, Landroid/telephony/CellSignalStrengthLte;

    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 3197
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v4

    .line 3198
    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    if-eq v0, v2, :cond_1

    neg-int v0, v0

    :cond_1
    move v5, v0

    .line 3199
    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    if-eq v0, v2, :cond_2

    neg-int v0, v0

    :cond_2
    move v6, v0

    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 3200
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget v9, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    invoke-direct/range {v3 .. v9}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIII)V

    return-object v3

    .line 3202
    :cond_3
    instance-of v1, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;

    if-eqz v1, :cond_6

    .line 3203
    check-cast p0, Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 3205
    new-instance v3, Landroid/telephony/CellSignalStrengthLte;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v0, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 3206
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v4

    .line 3207
    iget-object v0, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v1, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    if-eq v1, v2, :cond_4

    neg-int v1, v1

    :cond_4
    move v5, v1

    .line 3208
    iget v1, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    if-eq v1, v2, :cond_5

    neg-int v1, v1

    :cond_5
    move v6, v1

    iget v0, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 3209
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->cqiTableIndex:I

    iget-object p0, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget v10, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    invoke-direct/range {v3 .. v10}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    return-object v3

    :cond_6
    return-object v0
.end method

.method public static blacklist convertHalNetworkTypeBitMask(I)I
    .locals 7

    .line 0
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-long v2, v1

    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_1

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_1
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_2

    int-to-long v2, v0

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_2
    and-int/lit8 v2, p0, 0x10

    const-wide/16 v3, 0x8

    if-eqz v2, :cond_3

    int-to-long v5, v0

    or-long/2addr v5, v3

    long-to-int v0, v5

    :cond_3
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_4

    int-to-long v5, v0

    or-long v2, v5, v3

    long-to-int v0, v2

    :cond_4
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_5

    int-to-long v2, v0

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_5
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_6

    int-to-long v2, v0

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_6
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_7

    int-to-long v2, v0

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_7
    and-int/lit16 v2, p0, 0x1000

    if-eqz v2, :cond_8

    int-to-long v2, v0

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_8
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_9

    int-to-long v2, v0

    const-wide/16 v4, 0x2000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_9
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_a

    int-to-long v2, v0

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_a
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_b

    int-to-long v2, v0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_b
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_c

    int-to-long v2, v0

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_c
    const v2, 0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_d

    int-to-long v2, v0

    const-wide/16 v4, 0x4000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_d
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_e

    int-to-long v2, v0

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_e
    const/high16 v2, 0x20000

    and-int/2addr v2, p0

    if-eqz v2, :cond_f

    int-to-long v2, v0

    const-wide/32 v4, 0x10000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_f
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_10

    int-to-long v2, v0

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_10
    const/high16 v2, 0x80000

    and-int/2addr v2, p0

    if-eqz v2, :cond_11

    int-to-long v2, v0

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_11
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    if-eqz v2, :cond_12

    int-to-long v2, v0

    const-wide/32 v4, 0x80000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_12
    const/high16 v2, 0x40000

    and-int/2addr p0, v2

    if-eqz p0, :cond_13

    int-to-long v2, v0

    const-wide/32 v4, 0x20000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_13
    if-nez v0, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method public static blacklist convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;
    .locals 10

    .line 3339
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget v1, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiRsrp:I

    invoke-static {v1}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiRsrq:I

    .line 3340
    invoke-static {v2}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiSinr:I

    iget v4, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiCqiTableIndex:I

    iget-object v5, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiCqiReport:[B

    .line 3341
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssRsrp:I

    invoke-static {v6}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v6

    iget v7, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssRsrq:I

    .line 3342
    invoke-static {v7}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssSinr:I

    iget v9, p0, Landroid/hardware/radio/network/NrSignalStrength;->timingAdvance:I

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;IIII)V

    return-object v0
.end method

.method public static blacklist convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3313
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;

    if-eqz v1, :cond_1

    .line 3314
    check-cast p0, Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 3316
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-static {v1}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 3317
    invoke-static {v2}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    iget v4, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 3318
    invoke-static {v4}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v4

    iget v5, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    invoke-static {v5}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v5

    iget v6, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIIII)V

    return-object v0

    .line 3320
    :cond_1
    instance-of v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;

    if-eqz v1, :cond_2

    .line 3321
    check-cast p0, Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 3323
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-static {v1}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 3324
    invoke-static {v2}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    move-object v5, v4

    iget v4, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    move-object v6, v5

    iget-object v5, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    iget v6, v6, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 3325
    invoke-static {v6}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v6

    iget-object v7, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v7, v7, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    .line 3326
    invoke-static {v7}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v7

    iget-object p0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v8, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    const v9, 0x7fffffff

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;IIII)V

    :cond_2
    return-object v0
.end method

.method public static blacklist convertHalOperatorStatus(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 4254
    const-string p0, "unknown"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 4256
    const-string p0, "available"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 4258
    const-string p0, "current"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 4260
    const-string p0, "forbidden"

    return-object p0

    .line 4262
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static blacklist convertHalPhoneCapability([ILjava/lang/Object;)Landroid/telephony/PhoneCapability;
    .locals 8

    .line 4766
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4767
    instance-of v0, p1, Landroid/hardware/radio/config/PhoneCapability;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4768
    check-cast p1, Landroid/hardware/radio/config/PhoneCapability;

    .line 4770
    iget-byte v0, p1, Landroid/hardware/radio/config/PhoneCapability;->maxActiveData:B

    .line 4773
    iget-byte v2, p1, Landroid/hardware/radio/config/PhoneCapability;->maxActiveVoice:B

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 4775
    iget-byte v2, p1, Landroid/hardware/radio/config/PhoneCapability;->maxActiveInternetData:B

    .line 4779
    :cond_0
    iget-boolean v4, p1, Landroid/hardware/radio/config/PhoneCapability;->isInternetLingeringSupported:Z

    .line 4780
    iget-object p1, p1, Landroid/hardware/radio/config/PhoneCapability;->logicalModemIds:[B

    array-length v5, p1

    :goto_0
    if-ge v1, v5, :cond_1

    aget-byte v6, p1, v1

    .line 4781
    new-instance v7, Landroid/telephony/ModemInfo;

    invoke-direct {v7, v6}, Landroid/telephony/ModemInfo;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    move v2, v0

    goto :goto_2

    .line 4783
    :cond_2
    instance-of v0, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    if-eqz v0, :cond_3

    .line 4784
    check-cast p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    .line 4786
    iget-byte v0, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    .line 4789
    iget-byte v2, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    .line 4790
    iget-boolean v4, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    .line 4792
    iget-object p1, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    check-cast v6, Landroid/hardware/radio/config/V1_1/ModemInfo;

    .line 4793
    new-instance v7, Landroid/telephony/ModemInfo;

    iget-byte v6, v6, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    invoke-direct {v7, v6}, Landroid/telephony/ModemInfo;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v2, v1

    move v4, v2

    .line 4796
    :goto_2
    new-instance v0, Landroid/telephony/PhoneCapability;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    return-object v0
.end method

.method public static blacklist convertHalPhonebookCapacity(Landroid/hardware/radio/V1_6/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .locals 11

    if-eqz p0, :cond_0

    .line 4568
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    iget v4, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    iget v5, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    iget v6, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    iget v7, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    iget v8, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    iget v9, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    iget v10, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertHalPhonebookCapacity(Landroid/hardware/radio/sim/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .locals 11

    if-eqz p0, :cond_0

    .line 4584
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    iget v1, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdnRecords:I

    iget v2, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedAdnRecords:I

    iget v3, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxEmailRecords:I

    iget v4, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedEmailRecords:I

    iget v5, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdditionalNumberRecords:I

    iget v6, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedAdditionalNumberRecords:I

    iget v7, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxNameLen:I

    iget v8, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxNumberLen:I

    iget v9, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxEmailLen:I

    iget v10, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdditionalNumberLen:I

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertHalPhonebookRecordInfo(Landroid/hardware/radio/V1_6/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .locals 8

    .line 4599
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 4600
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 4601
    :goto_0
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_1
    move-object v7, v1

    goto :goto_2

    .line 4602
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    .line 4603
    :goto_2
    new-instance v2, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    iget-object v4, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static blacklist convertHalPhonebookRecordInfo(Landroid/hardware/radio/sim/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .locals 6

    .line 4614
    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    iget v1, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->recordId:I

    iget-object v2, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->number:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->emails:[Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->additionalNumbers:[Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3895
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->getDiscriminator()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-object v0

    .line 3901
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->nr()Landroid/hardware/radio/V1_6/NrQos;

    move-result-object p0

    .line 3902
    new-instance v0, Landroid/telephony/data/NrQos;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 3903
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    iget-short v4, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    iget-short v5, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    invoke-direct/range {v0 .. v5}, Landroid/telephony/data/NrQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V

    return-object v0

    .line 3897
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->eps()Landroid/hardware/radio/V1_6/EpsQos;

    move-result-object p0

    .line 3898
    new-instance v0, Landroid/telephony/data/EpsQos;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 3899
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-short p0, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/EpsQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;I)V

    return-object v0
.end method

.method private static blacklist convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3911
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-object v0

    .line 3917
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object p0

    .line 3918
    iget v0, p0, Landroid/hardware/radio/data/NrQos;->averagingWindowMillis:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3921
    iget-char v0, p0, Landroid/hardware/radio/data/NrQos;->averagingWindowMs:C

    :cond_2
    move v6, v0

    .line 3923
    new-instance v1, Landroid/telephony/data/NrQos;

    iget-object v0, p0, Landroid/hardware/radio/data/NrQos;->downlink:Landroid/hardware/radio/data/QosBandwidth;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/data/NrQos;->uplink:Landroid/hardware/radio/data/QosBandwidth;

    .line 3924
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v3

    iget-byte v4, p0, Landroid/hardware/radio/data/NrQos;->qfi:B

    iget v5, p0, Landroid/hardware/radio/data/NrQos;->fiveQi:I

    invoke-direct/range {v1 .. v6}, Landroid/telephony/data/NrQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V

    return-object v1

    .line 3913
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object p0

    .line 3914
    new-instance v0, Landroid/telephony/data/EpsQos;

    iget-object v1, p0, Landroid/hardware/radio/data/EpsQos;->downlink:Landroid/hardware/radio/data/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/EpsQos;->uplink:Landroid/hardware/radio/data/QosBandwidth;

    .line 3915
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget p0, p0, Landroid/hardware/radio/data/EpsQos;->qci:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/EpsQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;I)V

    return-object v0
.end method

.method private static blacklist convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;
    .locals 2

    .line 3885
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth;

    iget v1, p0, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {v0, v1, p0}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    return-object v0
.end method

.method private static blacklist convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;
    .locals 2

    .line 3890
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth;

    iget v1, p0, Landroid/hardware/radio/data/QosBandwidth;->maxBitrateKbps:I

    iget p0, p0, Landroid/hardware/radio/data/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {v0, v1, p0}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    return-object v0
.end method

.method private static blacklist convertHalQosBearerFilter(Landroid/hardware/radio/V1_6/QosFilter;)Landroid/telephony/data/QosBearerFilter;
    .locals 15

    .line 3932
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3933
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3935
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 3936
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3939
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3940
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3942
    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 3943
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3947
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 3948
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_2

    .line 3950
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->range()Landroid/hardware/radio/V1_6/PortRange;

    move-result-object v0

    .line 3951
    new-instance v5, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v6, v0, Landroid/hardware/radio/V1_6/PortRange;->start:I

    iget v0, v0, Landroid/hardware/radio/V1_6/PortRange;->end:I

    invoke-direct {v5, v6, v0}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    goto :goto_2

    :cond_2
    move-object v5, v3

    .line 3955
    :goto_2
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    if-eqz v0, :cond_3

    .line 3956
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_3

    .line 3958
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 3959
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->range()Landroid/hardware/radio/V1_6/PortRange;

    move-result-object v0

    .line 3960
    new-instance v3, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v6, v0, Landroid/hardware/radio/V1_6/PortRange;->start:I

    iget v0, v0, Landroid/hardware/radio/V1_6/PortRange;->end:I

    invoke-direct {v3, v6, v0}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    .line 3964
    :cond_3
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    if-eqz v0, :cond_4

    .line 3965
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_4

    .line 3967
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->value()B

    move-result v0

    :goto_3
    move v6, v0

    goto :goto_4

    :cond_4
    const/4 v0, -0x1

    goto :goto_3

    .line 3971
    :goto_4
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    const-wide/16 v7, -0x1

    if-eqz v0, :cond_5

    .line 3972
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_5

    .line 3974
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->value()I

    move-result v0

    int-to-long v9, v0

    goto :goto_5

    :cond_5
    move-wide v9, v7

    .line 3978
    :goto_5
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    if-eqz v0, :cond_6

    .line 3979
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_6

    .line 3981
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->value()I

    move-result v0

    int-to-long v7, v0

    .line 3984
    :cond_6
    new-instance v0, Landroid/telephony/data/QosBearerFilter;

    move-object v4, v3

    move-object v3, v5

    iget-byte v5, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    iget-byte v11, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    iget v12, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    move-wide v13, v9

    move-wide v9, v7

    move-wide v7, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    return-object v0
.end method

.method private static blacklist convertHalQosBearerFilter(Landroid/hardware/radio/data/QosFilter;)Landroid/telephony/data/QosBearerFilter;
    .locals 13

    .line 3990
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3991
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->localAddresses:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3993
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 3994
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3997
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3998
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->remoteAddresses:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 4000
    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 4001
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4005
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->localPort:Landroid/hardware/radio/data/PortRange;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 4006
    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, p0, Landroid/hardware/radio/data/QosFilter;->localPort:Landroid/hardware/radio/data/PortRange;

    iget v5, v4, Landroid/hardware/radio/data/PortRange;->start:I

    iget v4, v4, Landroid/hardware/radio/data/PortRange;->end:I

    invoke-direct {v0, v5, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 4010
    :goto_2
    iget-object v4, p0, Landroid/hardware/radio/data/QosFilter;->remotePort:Landroid/hardware/radio/data/PortRange;

    if-eqz v4, :cond_3

    .line 4011
    new-instance v3, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, p0, Landroid/hardware/radio/data/QosFilter;->remotePort:Landroid/hardware/radio/data/PortRange;

    iget v5, v4, Landroid/hardware/radio/data/PortRange;->start:I

    iget v4, v4, Landroid/hardware/radio/data/PortRange;->end:I

    invoke-direct {v3, v5, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    :cond_3
    move-object v4, v3

    .line 4015
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->tos:Landroid/hardware/radio/data/QosFilterTypeOfService;

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 4016
    invoke-virtual {v3}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getTag()I

    move-result v3

    if-ne v3, v5, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    move v6, v3

    .line 4022
    :goto_3
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->flowLabel:Landroid/hardware/radio/data/QosFilterIpv6FlowLabel;

    const-wide/16 v7, 0x1

    const-wide/16 v9, -0x1

    if-eqz v3, :cond_5

    .line 4023
    invoke-virtual {v3}, Landroid/hardware/radio/data/QosFilterIpv6FlowLabel;->getTag()I

    move-result v3

    if-ne v3, v5, :cond_5

    move-wide v11, v7

    goto :goto_4

    :cond_5
    move-wide v11, v7

    move-wide v7, v9

    .line 4029
    :goto_4
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->spi:Landroid/hardware/radio/data/QosFilterIpsecSpi;

    if-eqz v3, :cond_6

    .line 4030
    invoke-virtual {v3}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getTag()I

    move-result v3

    if-ne v3, v5, :cond_6

    move-wide v9, v11

    :cond_6
    move-object v3, v0

    .line 4035
    new-instance v0, Landroid/telephony/data/QosBearerFilter;

    iget-byte v5, p0, Landroid/hardware/radio/data/QosFilter;->protocol:B

    iget-byte v11, p0, Landroid/hardware/radio/data/QosFilter;->direction:B

    iget v12, p0, Landroid/hardware/radio/data/QosFilter;->precedence:I

    invoke-direct/range {v0 .. v12}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    return-object v0
.end method

.method private static blacklist convertHalQosBearerSession(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;
    .locals 5

    .line 4041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4042
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4043
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/radio/V1_6/QosFilter;

    .line 4044
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerFilter(Landroid/hardware/radio/V1_6/QosFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4047
    :cond_0
    new-instance v1, Landroid/telephony/data/QosBearerSession;

    iget v2, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    iget-object p0, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    return-object v1
.end method

.method private static blacklist convertHalQosBearerSession(Landroid/hardware/radio/data/QosSession;)Landroid/telephony/data/QosBearerSession;
    .locals 5

    .line 4053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4054
    iget-object v1, p0, Landroid/hardware/radio/data/QosSession;->qosFilters:[Landroid/hardware/radio/data/QosFilter;

    if-eqz v1, :cond_0

    .line 4055
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4056
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerFilter(Landroid/hardware/radio/data/QosFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4059
    :cond_0
    new-instance v1, Landroid/telephony/data/QosBearerSession;

    iget v2, p0, Landroid/hardware/radio/data/QosSession;->qosSessionId:I

    iget-object p0, p0, Landroid/hardware/radio/data/QosSession;->qos:Landroid/hardware/radio/data/Qos;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalRadioAccessNetworks(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    return v0
.end method

.method public static blacklist convertHalRadioAccessSpecifier(Landroid/hardware/radio/V1_5/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1467
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->getDiscriminator()B

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1483
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1479
    :cond_2
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1475
    :cond_3
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1471
    :cond_4
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands()Ljava/util/ArrayList;

    move-result-object v0

    .line 1486
    :goto_0
    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    iget v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioAccessNetworks(I)I

    move-result v2

    .line 1487
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    .line 1488
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    return-object v1
.end method

.method public static blacklist convertHalRadioAccessSpecifier(Landroid/hardware/radio/network/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1500
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1511
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v0

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v0

    goto :goto_0

    .line 1505
    :cond_3
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v0

    goto :goto_0

    .line 1502
    :cond_4
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v0

    .line 1514
    :goto_0
    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    iget v2, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->accessNetwork:I

    iget-object p0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->channels:[I

    invoke-direct {v1, v2, v0, p0}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    return-object v1
.end method

.method public static blacklist convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .locals 7

    .line 2386
    iget v2, p0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 2387
    iget v3, p0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 2388
    iget v0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result v4

    .line 2389
    iget-object v5, p0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 2390
    iget v6, p0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalRadioCapability: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcRil.raf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2395
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist convertHalRadioCapability(Landroid/hardware/radio/modem/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .locals 7

    .line 2406
    iget v2, p0, Landroid/hardware/radio/modem/RadioCapability;->session:I

    .line 2407
    iget v3, p0, Landroid/hardware/radio/modem/RadioCapability;->phase:I

    .line 2408
    iget v0, p0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result v4

    .line 2409
    iget-object v5, p0, Landroid/hardware/radio/modem/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 2410
    iget v6, p0, Landroid/hardware/radio/modem/RadioCapability;->status:I

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalRadioCapability: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcRil.raf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2415
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist convertHalRadioState(I)I
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    return v0

    .line 4135
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertHalRegState(I)I
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v3

    :cond_1
    :pswitch_0
    return v2

    :cond_2
    :pswitch_1
    return v1

    :cond_3
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 7

    .line 3111
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->cdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->evdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    .line 3112
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->gsm:Landroid/hardware/radio/network/GsmSignalStrength;

    .line 3113
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/network/SignalStrength;->wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    .line 3114
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/network/SignalStrength;->tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    .line 3115
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/network/SignalStrength;->lte:Landroid/hardware/radio/network/LteSignalStrength;

    .line 3116
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/network/SignalStrength;->nr:Landroid/hardware/radio/network/NrSignalStrength;

    .line 3117
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0
.end method

.method public static blacklist convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3080
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_4/SignalStrength;

    if-eqz v1, :cond_1

    .line 3081
    check-cast p0, Landroid/hardware/radio/V1_4/SignalStrength;

    .line 3083
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v2, p0, Landroid/hardware/radio/V1_4/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 3084
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_4/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 3085
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_4/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3086
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_4/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 3087
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/V1_4/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 3088
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->nr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 3089
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0

    .line 3090
    :cond_1
    instance-of v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;

    if-eqz v1, :cond_2

    .line 3091
    check-cast p0, Landroid/hardware/radio/V1_6/SignalStrength;

    .line 3093
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v2, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 3094
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 3095
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3096
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 3097
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 3098
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 3099
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    :cond_2
    return-object v0
.end method

.method private static blacklist convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .locals 3

    .line 3743
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;-><init>()V

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 3744
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 3745
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    .line 3746
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceStatus(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setStatus(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    .line 3747
    iget v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3748
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v1

    iget p0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 3749
    invoke-virtual {v1, p0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    .line 3751
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->build()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .locals 3

    .line 3755
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;-><init>()V

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->sliceServiceType:B

    .line 3756
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSst:B

    .line 3757
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->status:B

    .line 3758
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceStatus(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setStatus(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    .line 3759
    iget v1, p0, Landroid/hardware/radio/data/SliceInfo;->sliceDifferentiator:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3760
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v1

    iget p0, p0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSd:I

    .line 3761
    invoke-virtual {v1, p0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    .line 3763
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->build()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalSliceStatus(B)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist convertHalSlicingConfig(Landroid/hardware/radio/V1_6/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;
    .locals 3

    .line 3823
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda17;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3842
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3843
    new-instance v1, Landroid/telephony/data/NetworkSlicingConfig;

    iget-object p0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda18;-><init>()V

    .line 3844
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v1, v0, p0}, Landroid/telephony/data/NetworkSlicingConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalSlicingConfig(Landroid/hardware/radio/data/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;
    .locals 20

    move-object/from16 v1, p0

    .line 3854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3855
    iget-object v3, v1, Landroid/hardware/radio/data/SlicingConfig;->urspRules:[Landroid/hardware/radio/data/UrspRule;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 3856
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3857
    iget-object v9, v7, Landroid/hardware/radio/data/UrspRule;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v0, v9, v11

    .line 3859
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3861
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "convertHalTrafficDescriptor: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3864
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3866
    iget-object v9, v7, Landroid/hardware/radio/data/UrspRule;->routeSelectionDescriptor:[Landroid/hardware/radio/data/RouteSelectionDescriptor;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_2

    aget-object v12, v9, v11

    .line 3867
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3868
    iget-object v14, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sliceInfo:[Landroid/hardware/radio/data/SliceInfo;

    array-length v15, v14

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v15, :cond_1

    aget-object v16, v14, v5

    move-object/from16 v19, v3

    .line 3869
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v19

    goto :goto_4

    :cond_1
    move-object/from16 v19, v3

    .line 3871
    new-instance v3, Landroid/telephony/data/RouteSelectionDescriptor;

    iget-byte v14, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->precedence:B

    iget v15, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sessionType:I

    iget-byte v5, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sscMode:B

    iget-object v12, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->dnn:[Ljava/lang/String;

    .line 3872
    invoke-static {v12}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move/from16 v16, v5

    move-object/from16 v17, v13

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Landroid/telephony/data/RouteSelectionDescriptor;-><init>(IIILjava/util/List;Ljava/util/List;)V

    .line 3871
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v19

    goto :goto_3

    :cond_2
    move-object/from16 v19, v3

    .line 3874
    new-instance v3, Landroid/telephony/data/UrspRule;

    iget v5, v7, Landroid/hardware/radio/data/UrspRule;->precedence:I

    invoke-direct {v3, v5, v8, v0}, Landroid/telephony/data/UrspRule;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v19

    goto/16 :goto_0

    .line 3876
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3877
    iget-object v1, v1, Landroid/hardware/radio/data/SlicingConfig;->sliceInfo:[Landroid/hardware/radio/data/SliceInfo;

    array-length v3, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_4

    aget-object v4, v1, v5

    .line 3878
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3880
    :cond_4
    new-instance v1, Landroid/telephony/data/NetworkSlicingConfig;

    invoke-direct {v1, v2, v0}, Landroid/telephony/data/NetworkSlicingConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation

    .line 4650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 4652
    :try_start_0
    move-object v3, p0

    check-cast v3, [Landroid/hardware/radio/config/SimSlotStatus;

    .line 4654
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 4655
    new-instance v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4656
    iget v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->cardState:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 4657
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->portInfo:[Landroid/hardware/radio/config/SimPortInfo;

    array-length v8, v8

    .line 4658
    new-array v9, v8, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iput-object v9, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    .line 4660
    new-instance v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4661
    iget-object v11, v6, Landroid/hardware/radio/config/SimSlotStatus;->portInfo:[Landroid/hardware/radio/config/SimPortInfo;

    aget-object v11, v11, v9

    iget-object v12, v11, Landroid/hardware/radio/config/SimPortInfo;->iccId:Ljava/lang/String;

    iput-object v12, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4664
    iget-boolean v12, v11, Landroid/hardware/radio/config/SimPortInfo;->portActive:Z

    if-eqz v12, :cond_0

    .line 4665
    iget v11, v11, Landroid/hardware/radio/config/SimPortInfo;->logicalSlotId:I

    goto :goto_2

    :cond_0
    move v11, v1

    :goto_2
    iput v11, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4666
    iput-boolean v12, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    .line 4667
    iget-object v11, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4669
    :cond_1
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4670
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->eid:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 4671
    iget v6, v6, Landroid/hardware/radio/config/SimSlotStatus;->supportedMepMode:I

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setMultipleEnabledProfilesMode(I)V

    .line 4672
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    const/4 v3, 0x1

    .line 4678
    :try_start_1
    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    .line 4681
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;

    .line 4682
    new-instance v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4683
    iget-object v9, v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    iget v9, v9, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 4685
    new-array v9, v3, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4686
    new-instance v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v9}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4687
    iget-object v10, v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    iget-object v11, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iput-object v11, v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4688
    iget v11, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    if-ne v11, v3, :cond_2

    move v11, v3

    goto :goto_4

    :cond_2
    move v11, v2

    :goto_4
    iput-boolean v11, v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v11, :cond_3

    .line 4692
    iget v11, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    goto :goto_5

    :cond_3
    move v11, v1

    :goto_5
    iput v11, v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4693
    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v9, v11, v2

    .line 4694
    iget-object v9, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4695
    iget-object v7, v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    iput-object v7, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 4696
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 4702
    :catch_1
    :try_start_2
    check-cast p0, Ljava/util/ArrayList;

    .line 4705
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_6
    if-ge v5, v4, :cond_6

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    .line 4706
    new-instance v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4707
    iget v8, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 4709
    new-array v8, v3, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4710
    new-instance v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4711
    iget-object v9, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4712
    iget v9, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    if-ne v9, v3, :cond_4

    move v9, v3

    goto :goto_7

    :cond_4
    move v9, v2

    :goto_7
    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v9, :cond_5

    .line 4716
    iget v9, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    goto :goto_8

    :cond_5
    move v9, v1

    :goto_8
    iput v9, v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4717
    iget-object v9, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v8, v9, v2

    .line 4718
    iget-object v6, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4719
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    :cond_6
    return-object v0
.end method

.method public static blacklist convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;
    .locals 3

    .line 3296
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v1, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->signalStrength:I

    .line 3297
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->rscp:I

    .line 3298
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    .line 3299
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 3300
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3301
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_0
    return-object v0
.end method

.method public static blacklist convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3276
    :cond_0
    check-cast p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 3278
    new-instance v1, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v2, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->signalStrength:I

    .line 3279
    invoke-static {v2}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->rscp:I

    .line 3280
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result p0

    invoke-direct {v1, v2, v3, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    .line 3281
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result p0

    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 3282
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    .line 3283
    invoke-virtual {v1, v0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_1
    return-object v1
.end method

.method private static blacklist convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3786
    iget-object v0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 3785
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalDnn;->getDiscriminator()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3787
    :cond_0
    iget-object v0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalDnn;->value()Ljava/lang/String;

    move-result-object v0

    .line 3789
    :goto_0
    iget-object v2, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 3788
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 3790
    :cond_1
    iget-object p0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->value()Landroid/hardware/radio/V1_6/OsAppId;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/radio/V1_6/OsAppId;->osAppId:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 3792
    :goto_1
    new-instance p0, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    if-eqz v0, :cond_2

    .line 3794
    invoke-virtual {p0, v0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_2
    if-eqz v1, :cond_3

    .line 3797
    invoke-virtual {p0, v1}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 3799
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3804
    iget-object v0, p0, Landroid/hardware/radio/data/TrafficDescriptor;->dnn:Ljava/lang/String;

    .line 3805
    iget-object p0, p0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/hardware/radio/data/OsAppId;->osAppId:[B

    .line 3806
    :goto_0
    new-instance v1, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {v1}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    if-eqz v0, :cond_1

    .line 3808
    invoke-virtual {v1, v0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_1
    if-eqz p0, :cond_2

    .line 3811
    invoke-virtual {v1, p0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 3813
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;
    .locals 4

    .line 3258
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    iget v1, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->signalStrength:I

    .line 3259
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->bitErrorRate:I

    iget v3, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->rscp:I

    .line 3260
    invoke-static {v3}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result v3

    iget p0, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->ecno:I

    .line 3261
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getEcNoDbFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    .line 3262
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 3263
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3264
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_0
    return-object v0
.end method

.method public static blacklist convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3238
    :cond_0
    check-cast p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3240
    new-instance v1, Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v2, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    .line 3241
    invoke-static {v2}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    iget v4, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->rscp:I

    .line 3242
    invoke-static {v4}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result v4

    iget p0, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->ecno:I

    .line 3243
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getEcNoDbFromAsu(I)I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    .line 3244
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result p0

    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 3245
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    .line 3246
    invoke-virtual {v1, v0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_1
    return-object v1
.end method

.method public static blacklist convertImsCallInfo(Ljava/util/List;)[Landroid/hardware/radio/ims/ImsCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;)[",
            "Landroid/hardware/radio/ims/ImsCall;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 6034
    new-array p0, v0, [Landroid/hardware/radio/ims/ImsCall;

    return-object p0

    :cond_0
    move v1, v0

    move v2, v1

    .line 6038
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 6039
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 6042
    new-array p0, v0, [Landroid/hardware/radio/ims/ImsCall;

    return-object p0

    .line 6045
    :cond_3
    new-array v1, v2, [Landroid/hardware/radio/ims/ImsCall;

    move v2, v0

    .line 6049
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 6050
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    if-nez v3, :cond_4

    goto :goto_2

    .line 6053
    :cond_4
    new-instance v4, Landroid/hardware/radio/ims/ImsCall;

    invoke-direct {v4}, Landroid/hardware/radio/ims/ImsCall;-><init>()V

    aput-object v4, v1, v2

    .line 6054
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->index:I

    .line 6055
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToHalImsCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->callState:I

    .line 6056
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isEmergencyCall()Z

    move-result v5

    .line 6058
    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->callType:I

    .line 6059
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getCallRadioTech()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->accessNetwork:I

    .line 6060
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isIncoming()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 6062
    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->direction:I

    .line 6063
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isHeldByRemote()Z

    move-result v3

    iput-boolean v3, v4, Landroid/hardware/radio/ims/ImsCall;->isHeldByRemote:Z

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public static blacklist convertImsCapability(I)I
    .locals 2

    .line 0
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    and-int/lit8 p0, p0, 0x8

    if-lez p0, :cond_3

    or-int/lit8 p0, v0, 0x8

    return p0

    :cond_3
    return v0
.end method

.method public static blacklist convertImsRegistrationState(I)I
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5978
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertImsRegistrationTech(I)I
    .locals 2

    .line 0
    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    return v0
.end method

.method public static blacklist convertImsTrafficDirection(I)I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertImsTrafficType(I)I
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 5070
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static blacklist convertPresentation(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    return v0

    .line 5961
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertSecurityAlgorithmUpdate(Landroid/hardware/radio/network/SecurityAlgorithmUpdate;)Landroid/telephony/SecurityAlgorithmUpdate;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6309
    :cond_0
    new-instance v0, Landroid/telephony/SecurityAlgorithmUpdate;

    iget v1, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->connectionEvent:I

    iget v2, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->encryption:I

    iget v3, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->integrity:I

    iget-boolean p0, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->isUnprotectedEmergency:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/SecurityAlgorithmUpdate;-><init>(IIIZ)V

    return-object v0
.end method

.method public static blacklist convertSimSlotsMapping(Ljava/util/List;)[Landroid/hardware/radio/config/SlotPortMapping;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)[",
            "Landroid/hardware/radio/config/SlotPortMapping;"
        }
    .end annotation

    .line 4734
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/config/SlotPortMapping;

    .line 4735
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccSlotMapping;

    .line 4736
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v2

    .line 4737
    new-instance v3, Landroid/hardware/radio/config/SlotPortMapping;

    invoke-direct {v3}, Landroid/hardware/radio/config/SlotPortMapping;-><init>()V

    aput-object v3, v0, v2

    .line 4738
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/config/SlotPortMapping;->physicalSlotId:I

    .line 4739
    aget-object v2, v0, v2

    .line 4740
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v1

    .line 4739
    invoke-static {v3, v1}, Lcom/android/internal/telephony/uicc/PortUtils;->convertToHalPortIndex(II)I

    move-result v1

    iput v1, v2, Landroid/hardware/radio/config/SlotPortMapping;->portId:I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist convertSlotMappingToList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4748
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4749
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccSlotMapping;

    .line 4750
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 4752
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertSrvccCallRingbackToneType(I)I
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return v0

    .line 5940
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal ringback tone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertSrvccCallSubState(I)I
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    .line 5921
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal substate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertSrvccCallType(I)I
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    .line 5885
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToCensoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1662
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1664
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v0

    .line 1666
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1669
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1670
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1671
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    .line 1670
    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1672
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1673
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "********"

    .line 1672
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1677
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertToDataProfile(Landroid/hardware/radio/data/DataProfileInfo;)Landroid/telephony/data/DataProfile;
    .locals 4

    .line 1223
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1224
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1225
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1226
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 1227
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 1228
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 1229
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 1230
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 1231
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 1232
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 1233
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 1234
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 1235
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    .line 1237
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 1238
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 1239
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 1240
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 1241
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1242
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->infrastructureBitmap:I

    .line 1243
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 1248
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToDataProfile: Failed to convert traffic descriptor. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1254
    :goto_0
    new-instance v2, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v2}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    iget v3, p0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 1255
    invoke-virtual {v2, v3}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v2

    iget-boolean p0, p0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    .line 1256
    invoke-virtual {v2, p0}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1257
    invoke-virtual {p0, v1}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1258
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1259
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertToDriverCall(Landroid/hardware/radio/voice/Call;)Lcom/android/internal/telephony/DriverCall;
    .locals 4

    .line 4219
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 4220
    iget v1, p0, Landroid/hardware/radio/voice/Call;->state:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 4221
    iget v1, p0, Landroid/hardware/radio/voice/Call;->index:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4222
    iget v1, p0, Landroid/hardware/radio/voice/Call;->toa:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 4223
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isMpty:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 4224
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isMT:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 4225
    iget-byte v1, p0, Landroid/hardware/radio/voice/Call;->als:B

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 4226
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isVoice:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 4227
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 4228
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4229
    iget v1, p0, Landroid/hardware/radio/voice/Call;->numberPresentation:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 4230
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 4231
    iget v1, p0, Landroid/hardware/radio/voice/Call;->namePresentation:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 4232
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4233
    new-instance v1, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 4234
    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusType:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 4235
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusDcs:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 4236
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4237
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 4241
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4242
    iget v1, p0, Landroid/hardware/radio/voice/Call;->audioQuality:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    .line 4243
    iget-object p0, p0, Landroid/hardware/radio/voice/Call;->forwardedNumber:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;
    .locals 7

    .line 4162
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 4166
    instance-of v1, p0, Landroid/hardware/radio/V1_6/Call;

    if-eqz v1, :cond_0

    .line 4167
    check-cast p0, Landroid/hardware/radio/V1_6/Call;

    .line 4168
    iget-object v1, p0, Landroid/hardware/radio/V1_6/Call;->base:Landroid/hardware/radio/V1_2/Call;

    .line 4169
    iget-object v2, v1, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    goto :goto_0

    .line 4170
    :cond_0
    instance-of v1, p0, Landroid/hardware/radio/V1_2/Call;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4172
    move-object v1, p0

    check-cast v1, Landroid/hardware/radio/V1_2/Call;

    .line 4173
    iget-object p0, v1, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_0

    :cond_1
    move-object p0, v2

    move-object v1, p0

    :goto_0
    if-eqz v2, :cond_3

    .line 4180
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 4181
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4182
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 4183
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 4184
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 4185
    iget-byte v3, v2, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 4186
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 4187
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 4188
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4189
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 4190
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 4191
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 4192
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 4193
    new-instance v3, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 4194
    iget-object v4, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 4195
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 4196
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4197
    iget-object v2, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 4198
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 4202
    :cond_2
    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    .line 4205
    iget v1, v1, Landroid/hardware/radio/V1_2/Call;->audioQuality:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    :cond_4
    if-eqz p0, :cond_5

    .line 4208
    iget-object p0, p0, Landroid/hardware/radio/V1_6/Call;->forwardedNumber:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    :cond_5
    return-object v0
.end method

.method public static blacklist convertToHalAccessNetwork(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertToHalAccessNetworkAidl(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertToHalCarrierInfoListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/CarrierInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)[",
            "Landroid/hardware/radio/sim/CarrierInfo;"
        }
    .end annotation

    .line 2166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/sim/CarrierInfo;

    const/4 v1, 0x0

    .line 2167
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2168
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/carrier/CarrierIdentifier;

    .line 2169
    new-instance v3, Landroid/hardware/radio/sim/CarrierInfo;

    invoke-direct {v3}, Landroid/hardware/radio/sim/CarrierInfo;-><init>()V

    .line 2171
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->mcc:Ljava/lang/String;

    .line 2172
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->mnc:Ljava/lang/String;

    .line 2173
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->spn:Ljava/lang/String;

    .line 2174
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->imsiPrefix:Ljava/lang/String;

    .line 2175
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid1:Ljava/lang/String;

    .line 2176
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid2:Ljava/lang/String;

    .line 2177
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist convertToHalCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;"
        }
    .end annotation

    .line 2094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2095
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/carrier/CarrierIdentifier;

    .line 2096
    new-instance v2, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    .line 2097
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 2098
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 2101
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2103
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_1

    .line 2104
    :cond_0
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2106
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    goto :goto_1

    .line 2107
    :cond_1
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2109
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    goto :goto_1

    .line 2110
    :cond_2
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2112
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2114
    :goto_1
    iput v3, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 2115
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    .line 2116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static blacklist convertToHalCarrierRestrictionListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/Carrier;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)[",
            "Landroid/hardware/radio/sim/Carrier;"
        }
    .end annotation

    .line 2129
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/sim/Carrier;

    const/4 v1, 0x0

    move v2, v1

    .line 2130
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2131
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/carrier/CarrierIdentifier;

    .line 2132
    new-instance v4, Landroid/hardware/radio/sim/Carrier;

    invoke-direct {v4}, Landroid/hardware/radio/sim/Carrier;-><init>()V

    .line 2133
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/sim/Carrier;->mcc:Ljava/lang/String;

    .line 2134
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/sim/Carrier;->mnc:Ljava/lang/String;

    .line 2137
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2139
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    goto :goto_1

    .line 2140
    :cond_0
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2142
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    goto :goto_1

    .line 2143
    :cond_1
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2145
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    goto :goto_1

    .line 2146
    :cond_2
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2148
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    move v5, v1

    .line 2150
    :goto_1
    iput v5, v4, Landroid/hardware/radio/sim/Carrier;->matchType:I

    .line 2151
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/hardware/radio/sim/Carrier;->matchData:Ljava/lang/String;

    .line 2152
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static blacklist convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .locals 7

    .line 650
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 655
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 656
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 659
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 660
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 661
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 662
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 663
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 664
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 665
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 666
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 668
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 670
    :cond_1
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 671
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    if-ne v4, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput-boolean v3, v1, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 672
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    .line 674
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 677
    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_4

    .line 679
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    :cond_4
    return-object v0
.end method

.method public static blacklist convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .locals 7

    .line 693
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsMessage;-><init>()V

    .line 695
    new-instance v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-direct {v1}, Landroid/hardware/radio/messaging/CdmaSmsAddress;-><init>()V

    iput-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    .line 696
    new-instance v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-direct {v1}, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;-><init>()V

    iput-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    .line 700
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 701
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 704
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->teleserviceId:I

    .line 705
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->isServicePresent:Z

    .line 706
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->serviceCategory:I

    .line 707
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digitMode:I

    .line 708
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    .line 709
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->isNumberModeDataNetwork:Z

    .line 710
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberType:I

    .line 711
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberPlan:I

    .line 712
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 713
    new-array v4, v1, [B

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_2

    .line 715
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 717
    :cond_2
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iput-object v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    .line 718
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->subaddressType:I

    .line 719
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    if-ne v4, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iput-boolean v3, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->odd:Z

    .line 720
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 721
    new-array v3, v1, [B

    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_4

    .line 723
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 725
    :cond_4
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    iput-object v3, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->digits:[B

    .line 727
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 728
    new-array v3, v1, [B

    :goto_5
    if-ge v2, v1, :cond_5

    .line 730
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 732
    :cond_5
    iput-object v3, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->bearerData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static blacklist convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1177
    :cond_0
    new-instance v0, Landroid/hardware/radio/data/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/data/DataProfileInfo;-><init>()V

    .line 1180
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1181
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 1182
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 1183
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 1184
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 1185
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 1186
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 1187
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 1188
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 1189
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 1190
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 1191
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1195
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1194
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 1196
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 1197
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 1198
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 1199
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    const/4 v1, 0x0

    .line 1200
    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1201
    iput v2, v0, Landroid/hardware/radio/data/DataProfileInfo;->infrastructureBitmap:I

    .line 1203
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1204
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1205
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getInfrastructureBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->infrastructureBitmap:I

    .line 1207
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertToHalTrafficDescriptorAidl(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/data/TrafficDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    .line 1210
    iget-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    .line 1211
    :goto_0
    iput p0, v0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;
    .locals 2

    .line 1099
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 1102
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1103
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->protocol:I

    .line 1104
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->roamingProtocol:I

    .line 1105
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->authType:I

    .line 1106
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->user:Ljava/lang/String;

    .line 1107
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->password:Ljava/lang/String;

    .line 1108
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->type:I

    .line 1109
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConnsTime:I

    .line 1110
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConns:I

    .line 1111
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->waitTime:I

    .line 1112
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->enabled:Z

    .line 1113
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1118
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1117
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->bearerBitmap:I

    .line 1119
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->mtu:I

    .line 1120
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    .line 1121
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->preferred:Z

    .line 1124
    iget-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1125
    :goto_0
    iput p0, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;
    .locals 2

    .line 1137
    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 1140
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1141
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    .line 1142
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    .line 1143
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    .line 1144
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 1145
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 1146
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    .line 1147
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    .line 1148
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    .line 1149
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    .line 1150
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    .line 1151
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1156
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1155
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    .line 1157
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    .line 1158
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    .line 1159
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    .line 1160
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    .line 1163
    iget-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1164
    :goto_0
    iput p0, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfileWithCid(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;
    .locals 2

    .line 1053
    new-instance v0, Landroid/hardware/radio/data/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/data/DataProfileInfo;-><init>()V

    .line 1056
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1057
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 1058
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 1059
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 1060
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 1061
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 1063
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 1064
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 1065
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 1066
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 1067
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1071
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1070
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 1072
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 1073
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 1074
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 1075
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    const/4 v1, 0x0

    .line 1076
    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1077
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1080
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertToHalTrafficDescriptorAidl(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/data/TrafficDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    .line 1086
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfileWithCid10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;
    .locals 3

    .line 937
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 940
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->profileId:I

    .line 941
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->apn:Ljava/lang/String;

    .line 942
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->protocol:Ljava/lang/String;

    .line 943
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->roamingProtocol:Ljava/lang/String;

    .line 944
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->authType:I

    .line 945
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->user:Ljava/lang/String;

    .line 946
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->password:Ljava/lang/String;

    .line 947
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->type:I

    .line 948
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConnsTime:I

    .line 949
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConns:I

    .line 950
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->waitTime:I

    .line 951
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->enabled:Z

    .line 952
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 957
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 956
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->bearerBitmap:I

    .line 958
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mtu:I

    const/4 p0, 0x0

    .line 959
    iput p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoType:I

    .line 960
    const-string p0, ""

    iput-object p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalDataProfileWithCid14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;
    .locals 2

    .line 972
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 975
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->apn:Ljava/lang/String;

    .line 976
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->protocol:I

    .line 977
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->roamingProtocol:I

    .line 978
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->authType:I

    .line 979
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->user:Ljava/lang/String;

    .line 980
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->password:Ljava/lang/String;

    .line 981
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->type:I

    .line 982
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConnsTime:I

    .line 983
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConns:I

    .line 984
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->waitTime:I

    .line 985
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->enabled:Z

    .line 986
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 991
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 990
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->bearerBitmap:I

    .line 992
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->mtu:I

    .line 993
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    .line 994
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->preferred:Z

    .line 1000
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfileWithCid15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;
    .locals 2

    .line 1012
    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 1015
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1016
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    .line 1017
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    .line 1018
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    .line 1019
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 1020
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 1021
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    .line 1022
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    .line 1023
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    .line 1024
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    .line 1025
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    .line 1026
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1031
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1030
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    .line 1032
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    .line 1033
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    .line 1034
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    .line 1035
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    .line 1041
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;
    .locals 1

    .line 2191
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2192
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 2193
    iput p1, v0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    if-eqz p2, :cond_0

    .line 2195
    new-instance p0, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {p0}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 2196
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 2197
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2198
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2199
    iget-object p1, v0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static blacklist convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;
    .locals 2

    .line 2213
    new-instance v0, Landroid/hardware/radio/voice/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/voice/Dial;-><init>()V

    .line 2214
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/voice/Dial;->address:Ljava/lang/String;

    .line 2215
    iput p1, v0, Landroid/hardware/radio/voice/Dial;->clir:I

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 2217
    new-instance p1, Landroid/hardware/radio/voice/UusInfo;

    invoke-direct {p1}, Landroid/hardware/radio/voice/UusInfo;-><init>()V

    .line 2218
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v1

    iput v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusType:I

    .line 2219
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v1

    iput v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusDcs:I

    .line 2220
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    const/4 p2, 0x1

    .line 2221
    new-array p2, p2, [Landroid/hardware/radio/voice/UusInfo;

    aput-object p1, p2, p0

    iput-object p2, v0, Landroid/hardware/radio/voice/Dial;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    return-object v0

    .line 2223
    :cond_0
    new-array p0, p0, [Landroid/hardware/radio/voice/UusInfo;

    iput-object p0, v0, Landroid/hardware/radio/voice/Dial;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    return-object v0
.end method

.method public static blacklist convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .locals 2

    .line 621
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 623
    const-string v1, ""

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    iput-object p0, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object p1, v1

    .line 624
    :cond_1
    iput-object p1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;
    .locals 1

    .line 636
    new-instance v0, Landroid/hardware/radio/messaging/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/GsmSmsMessage;-><init>()V

    .line 638
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/messaging/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 639
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/messaging/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist convertToHalImsCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 1

    .line 6276
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x7

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertToHalLinkProperties(Landroid/net/LinkProperties;)[Landroid/hardware/radio/data/LinkAddress;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1441
    new-array p0, v0, [Landroid/hardware/radio/data/LinkAddress;

    return-object p0

    .line 1445
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/radio/data/LinkAddress;

    .line 1446
    :goto_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1447
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1448
    new-instance v3, Landroid/hardware/radio/data/LinkAddress;

    invoke-direct {v3}, Landroid/hardware/radio/data/LinkAddress;-><init>()V

    .line 1450
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/data/LinkAddress;->address:Ljava/lang/String;

    .line 1451
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getFlags()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/data/LinkAddress;->addressProperties:I

    .line 1452
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getDeprecationTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/data/LinkAddress;->deprecationTime:J

    .line 1453
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getExpirationTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/data/LinkAddress;->expirationTime:J

    .line 1454
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static blacklist convertToHalLinkProperties15(Landroid/net/LinkProperties;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 1418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 1420
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1421
    new-instance v2, Landroid/hardware/radio/V1_5/LinkAddress;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/LinkAddress;-><init>()V

    .line 1423
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    .line 1424
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getFlags()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    .line 1425
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getDeprecationTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    .line 1426
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getExpirationTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    .line 1427
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist convertToHalPersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I
    .locals 1

    .line 458
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x22

    return p0

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1f

    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/16 p0, 0x1d

    return p0

    :pswitch_6
    const/16 p0, 0x1c

    return p0

    :pswitch_7
    const/16 p0, 0x1b

    return p0

    :pswitch_8
    const/16 p0, 0x1a

    return p0

    :pswitch_9
    const/16 p0, 0x19

    return p0

    :pswitch_a
    const/16 p0, 0x18

    return p0

    :pswitch_b
    const/16 p0, 0x17

    return p0

    :pswitch_c
    const/16 p0, 0x16

    return p0

    :pswitch_d
    const/16 p0, 0x15

    return p0

    :pswitch_e
    const/16 p0, 0x14

    return p0

    :pswitch_f
    const/16 p0, 0x13

    return p0

    :pswitch_10
    const/16 p0, 0x12

    return p0

    :pswitch_11
    const/16 p0, 0x11

    return p0

    :pswitch_12
    const/16 p0, 0x10

    return p0

    :pswitch_13
    const/16 p0, 0xf

    return p0

    :pswitch_14
    const/16 p0, 0xe

    return p0

    :pswitch_15
    const/16 p0, 0xd

    return p0

    :pswitch_16
    const/16 p0, 0xc

    return p0

    :pswitch_17
    const/16 p0, 0xb

    return p0

    :pswitch_18
    const/16 p0, 0xa

    return p0

    :pswitch_19
    const/16 p0, 0x9

    return p0

    :pswitch_1a
    const/16 p0, 0x8

    return p0

    :pswitch_1b
    const/4 p0, 0x7

    return p0

    :pswitch_1c
    const/4 p0, 0x6

    return p0

    :pswitch_1d
    const/4 p0, 0x5

    return p0

    :pswitch_1e
    const/4 p0, 0x4

    return p0

    :pswitch_1f
    const/4 p0, 0x3

    return p0

    :pswitch_20
    const/4 p0, 0x2

    return p0

    :pswitch_21
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertToHalPersoTypeAidl(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I
    .locals 1

    .line 539
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x22

    return p0

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1f

    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/16 p0, 0x1d

    return p0

    :pswitch_6
    const/16 p0, 0x1c

    return p0

    :pswitch_7
    const/16 p0, 0x1b

    return p0

    :pswitch_8
    const/16 p0, 0x1a

    return p0

    :pswitch_9
    const/16 p0, 0x19

    return p0

    :pswitch_a
    const/16 p0, 0x18

    return p0

    :pswitch_b
    const/16 p0, 0x17

    return p0

    :pswitch_c
    const/16 p0, 0x16

    return p0

    :pswitch_d
    const/16 p0, 0x15

    return p0

    :pswitch_e
    const/16 p0, 0x14

    return p0

    :pswitch_f
    const/16 p0, 0x13

    return p0

    :pswitch_10
    const/16 p0, 0x12

    return p0

    :pswitch_11
    const/16 p0, 0x11

    return p0

    :pswitch_12
    const/16 p0, 0x10

    return p0

    :pswitch_13
    const/16 p0, 0xf

    return p0

    :pswitch_14
    const/16 p0, 0xe

    return p0

    :pswitch_15
    const/16 p0, 0xd

    return p0

    :pswitch_16
    const/16 p0, 0xc

    return p0

    :pswitch_17
    const/16 p0, 0xb

    return p0

    :pswitch_18
    const/16 p0, 0xa

    return p0

    :pswitch_19
    const/16 p0, 0x9

    return p0

    :pswitch_1a
    const/16 p0, 0x8

    return p0

    :pswitch_1b
    const/4 p0, 0x7

    return p0

    :pswitch_1c
    const/4 p0, 0x6

    return p0

    :pswitch_1d
    const/4 p0, 0x5

    return p0

    :pswitch_1e
    const/4 p0, 0x4

    return p0

    :pswitch_1f
    const/4 p0, 0x3

    return p0

    :pswitch_20
    const/4 p0, 0x2

    return p0

    :pswitch_21
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist convertToHalPhonebookRecordInfo(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    .locals 0

    if-eqz p0, :cond_0

    .line 4626
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toPhonebookRecordInfo()Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertToHalPhonebookRecordInfoAidl(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/sim/PhonebookRecordInfo;
    .locals 0

    if-eqz p0, :cond_0

    .line 4639
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toPhonebookRecordInfoAidl()Landroid/hardware/radio/sim/PhonebookRecordInfo;

    move-result-object p0

    return-object p0

    .line 4641
    :cond_0
    new-instance p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;

    invoke-direct {p0}, Landroid/hardware/radio/sim/PhonebookRecordInfo;-><init>()V

    return-object p0
.end method

.method public static blacklist convertToHalRadioAccessFamily(I)I
    .locals 6

    .line 0
    int-to-long v0, p0

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    const/high16 p0, 0x10000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    or-int/lit8 p0, p0, 0x2

    :cond_1
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    or-int/lit8 p0, p0, 0x4

    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    or-int/lit8 p0, p0, 0x10

    :cond_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    or-int/lit8 p0, p0, 0x40

    :cond_4
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    or-int/lit16 p0, p0, 0x80

    :cond_5
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    or-int/lit16 p0, p0, 0x100

    :cond_6
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    or-int/lit16 p0, p0, 0x1000

    :cond_7
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    or-int/lit16 p0, p0, 0x2000

    :cond_8
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    or-int/lit16 p0, p0, 0x400

    :cond_9
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    or-int/lit16 p0, p0, 0x200

    :cond_a
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    or-int/lit16 p0, p0, 0x800

    :cond_b
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const v2, 0x8000

    or-int/2addr p0, v2

    :cond_c
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    or-int/lit8 p0, p0, 0x8

    :cond_d
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/high16 v2, 0x20000

    or-int/2addr p0, v2

    :cond_e
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/high16 v2, 0x40000

    or-int/2addr p0, v2

    :cond_f
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    or-int/lit16 p0, p0, 0x4000

    :cond_10
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    const/high16 v2, 0x80000

    or-int/2addr p0, v2

    :cond_11
    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_12
    if-nez p0, :cond_13

    const/4 p0, 0x1

    :cond_13
    return p0
.end method

.method public static blacklist convertToHalRadioAccessFamilyAidl(I)I
    .locals 6

    .line 0
    int-to-long v0, p0

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    const/high16 p0, 0x10000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    or-int/lit8 p0, p0, 0x2

    :cond_1
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    or-int/lit8 p0, p0, 0x4

    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    or-int/lit8 p0, p0, 0x10

    :cond_3
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    or-int/lit8 p0, p0, 0x40

    :cond_4
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    or-int/lit16 p0, p0, 0x80

    :cond_5
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    or-int/lit16 p0, p0, 0x100

    :cond_6
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    or-int/lit16 p0, p0, 0x1000

    :cond_7
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    or-int/lit16 p0, p0, 0x2000

    :cond_8
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    or-int/lit16 p0, p0, 0x400

    :cond_9
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    or-int/lit16 p0, p0, 0x200

    :cond_a
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    or-int/lit16 p0, p0, 0x800

    :cond_b
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const v2, 0x8000

    or-int/2addr p0, v2

    :cond_c
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    or-int/lit8 p0, p0, 0x8

    :cond_d
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/high16 v2, 0x20000

    or-int/2addr p0, v2

    :cond_e
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/high16 v2, 0x40000

    or-int/2addr p0, v2

    :cond_f
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    :cond_10
    or-int/lit16 p0, p0, 0x4000

    :cond_11
    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_12
    if-nez p0, :cond_13

    const/4 p0, 0x1

    :cond_13
    return p0
.end method

.method public static blacklist convertToHalRadioAccessNetworks(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    return v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifier11(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    .locals 7

    .line 1524
    new-instance v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 1526
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 1527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1529
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v2, v5

    .line 1530
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1533
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1541
    :cond_1
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    goto :goto_1

    .line 1538
    :cond_2
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    goto :goto_1

    .line 1535
    :cond_3
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    .line 1547
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1548
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object p0

    array-length v1, p0

    :goto_2
    if-ge v3, v1, :cond_4

    aget v2, p0, v3

    .line 1549
    iget-object v4, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifier15(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    .locals 8

    .line 1563
    new-instance v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;-><init>()V

    .line 1565
    new-instance v1, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;-><init>()V

    .line 1568
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    .line 1567
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessNetworks(I)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 1569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1570
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1571
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v3, v6

    .line 1572
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1575
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x6

    if-eq v3, v5, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1586
    :cond_1
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1583
    :cond_2
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1580
    :cond_3
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1577
    :cond_4
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands(Ljava/util/ArrayList;)V

    .line 1591
    :goto_1
    iput-object v1, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    .line 1593
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1594
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object p0

    array-length v1, p0

    :goto_2
    if-ge v4, v1, :cond_5

    aget v2, p0, v4

    .line 1595
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifierAidl(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/network/RadioAccessSpecifier;
    .locals 6

    .line 1609
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/network/RadioAccessSpecifier;-><init>()V

    .line 1611
    new-instance v1, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-direct {v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>()V

    .line 1613
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->accessNetwork:I

    .line 1615
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1616
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    move v4, v3

    .line 1617
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 1618
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    aget v5, v5, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1621
    :cond_0
    new-array v2, v3, [I

    .line 1623
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 1634
    :cond_2
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setNgranBands([I)V

    goto :goto_1

    .line 1631
    :cond_3
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setEutranBands([I)V

    goto :goto_1

    .line 1628
    :cond_4
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setUtranBands([I)V

    goto :goto_1

    .line 1625
    :cond_5
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setGeranBands([I)V

    .line 1639
    :goto_1
    iput-object v1, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    .line 1642
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1643
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    .line 1644
    :goto_2
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    array-length v2, v2

    if-ge v3, v2, :cond_7

    .line 1645
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1648
    :cond_6
    new-array v1, v3, [I

    .line 1650
    :cond_7
    iput-object v1, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->channels:[I

    return-object v0
.end method

.method public static blacklist convertToHalResetNvType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist convertToHalResetNvTypeAidl(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist convertToHalSignalThresholdInfo(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    .locals 2

    .line 2235
    new-instance v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    .line 2237
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    .line 2238
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    .line 2239
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    .line 2241
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    .line 2240
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    .line 2242
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    return-object v0
.end method

.method public static blacklist convertToHalSignalThresholdInfoAidl(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/network/SignalThresholdInfo;
    .locals 2

    .line 2253
    new-instance v0, Landroid/hardware/radio/network/SignalThresholdInfo;

    invoke-direct {v0}, Landroid/hardware/radio/network/SignalThresholdInfo;-><init>()V

    .line 2255
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->signalMeasurement:I

    .line 2256
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->hysteresisMs:I

    .line 2257
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->hysteresisDb:I

    .line 2258
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->thresholds:[I

    .line 2259
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->isEnabled:Z

    .line 2260
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->ran:I

    return-object v0
.end method

.method public static blacklist convertToHalSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;
    .locals 1

    .line 2011
    new-instance v0, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 2012
    iput p0, v0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 2013
    iput p1, v0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 2014
    iput p2, v0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 2015
    iput p3, v0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 2016
    iput p4, v0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 2017
    iput p5, v0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 2018
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalSimApduAidl(IIIIIILjava/lang/String;ZLcom/android/internal/telephony/HalVersion;)Landroid/hardware/radio/sim/SimApdu;
    .locals 1

    .line 2037
    new-instance v0, Landroid/hardware/radio/sim/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/sim/SimApdu;-><init>()V

    .line 2038
    iput p0, v0, Landroid/hardware/radio/sim/SimApdu;->sessionId:I

    .line 2039
    iput p1, v0, Landroid/hardware/radio/sim/SimApdu;->cla:I

    .line 2040
    iput p2, v0, Landroid/hardware/radio/sim/SimApdu;->instruction:I

    .line 2041
    iput p3, v0, Landroid/hardware/radio/sim/SimApdu;->p1:I

    .line 2042
    iput p4, v0, Landroid/hardware/radio/sim/SimApdu;->p2:I

    .line 2043
    iput p5, v0, Landroid/hardware/radio/sim/SimApdu;->p3:I

    .line 2044
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/sim/SimApdu;->data:Ljava/lang/String;

    .line 2045
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p8, p0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2046
    iput-boolean p7, v0, Landroid/hardware/radio/sim/SimApdu;->isEs10:Z

    :cond_0
    return-object v0
.end method

.method public static blacklist convertToHalSimLockMultiSimPolicy(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist convertToHalSimLockMultiSimPolicyAidl(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist convertToHalSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/V1_6/OptionalSliceInfo;
    .locals 3

    .line 1269
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 1275
    :cond_0
    new-instance v1, Landroid/hardware/radio/V1_6/SliceInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/SliceInfo;-><init>()V

    .line 1276
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 1277
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceServiceType()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 1278
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    .line 1279
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceDifferentiator()I

    move-result p0

    iput p0, v1, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 1280
    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value(Landroid/hardware/radio/V1_6/SliceInfo;)V

    return-object v0
.end method

.method public static blacklist convertToHalSliceInfoAidl(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/data/SliceInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1295
    :cond_0
    new-instance v0, Landroid/hardware/radio/data/SliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/data/SliceInfo;-><init>()V

    .line 1296
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/radio/data/SliceInfo;->sliceServiceType:B

    .line 1297
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceServiceType()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSst:B

    .line 1298
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/SliceInfo;->sliceDifferentiator:I

    .line 1299
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceDifferentiator()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSd:I

    return-object v0
.end method

.method public static blacklist convertToHalSmsWriteArgsStatus(I)I
    .locals 3

    .line 0
    const/4 v0, 0x7

    and-int/2addr p0, v0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalSmsWriteArgsStatusAidl(I)I
    .locals 3

    .line 0
    const/4 v0, 0x7

    and-int/2addr p0, v0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalSrvccCall([Lcom/android/internal/telephony/SrvccConnection;)[Landroid/hardware/radio/ims/SrvccCall;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5843
    new-array p0, v0, [Landroid/hardware/radio/ims/SrvccCall;

    return-object p0

    .line 5846
    :cond_0
    array-length v1, p0

    .line 5847
    new-array v2, v1, [Landroid/hardware/radio/ims/SrvccCall;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 5851
    new-instance v3, Landroid/hardware/radio/ims/SrvccCall;

    invoke-direct {v3}, Landroid/hardware/radio/ims/SrvccCall;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    .line 5852
    iput v4, v3, Landroid/hardware/radio/ims/SrvccCall;->index:I

    .line 5853
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertSrvccCallType(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->callType:I

    .line 5854
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->callState:I

    .line 5855
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    .line 5856
    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getSubState()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertSrvccCallSubState(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->callSubstate:I

    .line 5857
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    .line 5858
    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getRingbackToneType()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertSrvccCallRingbackToneType(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->ringbackToneType:I

    .line 5859
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->isMultiParty()Z

    move-result v5

    iput-boolean v5, v3, Landroid/hardware/radio/ims/SrvccCall;->isMpty:Z

    .line 5860
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->isIncoming()Z

    move-result v5

    iput-boolean v5, v3, Landroid/hardware/radio/ims/SrvccCall;->isMT:Z

    .line 5861
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/radio/ims/SrvccCall;->number:Ljava/lang/String;

    .line 5862
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    .line 5863
    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getNumberPresentation()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertPresentation(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->numPresentation:I

    .line 5864
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/radio/ims/SrvccCall;->name:Ljava/lang/String;

    .line 5865
    aget-object v3, v2, v0

    aget-object v0, p0, v0

    .line 5866
    invoke-virtual {v0}, Lcom/android/internal/telephony/SrvccConnection;->getNamePresentation()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertPresentation(I)I

    move-result v0

    iput v0, v3, Landroid/hardware/radio/ims/SrvccCall;->namePresentation:I

    move v0, v4

    goto/16 :goto_0

    :cond_1
    return-object v2
.end method

.method public static blacklist convertToHalTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;
    .locals 4

    .line 1310
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 1316
    :cond_0
    new-instance v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/TrafficDescriptor;-><init>()V

    .line 1319
    new-instance v2, Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/OptionalDnn;-><init>()V

    .line 1321
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1322
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/radio/V1_6/OptionalDnn;->value(Ljava/lang/String;)V

    .line 1324
    :cond_1
    iput-object v2, v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 1326
    new-instance v2, Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;-><init>()V

    .line 1328
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1329
    new-instance v3, Landroid/hardware/radio/V1_6/OsAppId;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/OsAppId;-><init>()V

    .line 1330
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Landroid/hardware/radio/V1_6/OsAppId;->osAppId:Ljava/util/ArrayList;

    .line 1331
    invoke-virtual {v2, v3}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->value(Landroid/hardware/radio/V1_6/OsAppId;)V

    .line 1333
    :cond_2
    iput-object v2, v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 1335
    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;->value(Landroid/hardware/radio/V1_6/TrafficDescriptor;)V

    return-object v0
.end method

.method public static blacklist convertToHalTrafficDescriptorAidl(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/data/TrafficDescriptor;
    .locals 2

    if-nez p0, :cond_0

    .line 1347
    new-instance p0, Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {p0}, Landroid/hardware/radio/data/TrafficDescriptor;-><init>()V

    return-object p0

    .line 1350
    :cond_0
    new-instance v0, Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {v0}, Landroid/hardware/radio/data/TrafficDescriptor;-><init>()V

    .line 1352
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/TrafficDescriptor;->dnn:Ljava/lang/String;

    .line 1353
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 1354
    iput-object p0, v0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    return-object v0

    .line 1356
    :cond_1
    new-instance v1, Landroid/hardware/radio/data/OsAppId;

    invoke-direct {v1}, Landroid/hardware/radio/data/OsAppId;-><init>()V

    .line 1357
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object p0

    iput-object p0, v1, Landroid/hardware/radio/data/OsAppId;->osAppId:[B

    .line 1358
    iput-object v1, v0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    return-object v0
.end method

.method private static blacklist convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .locals 6

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    move-object v0, p0

    .line 3434
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;
    .locals 11

    .line 3440
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3444
    :try_start_0
    const-string v2, "/"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 3445
    aget-object v4, v2, v4

    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3446
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3447
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    goto :goto_0

    .line 3448
    :cond_1
    array-length v4, v2

    if-ne v4, v3, :cond_2

    .line 3449
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    move-object v3, v0

    move v4, v2

    goto :goto_1

    :catch_0
    move-object v3, v0

    move v4, v1

    :goto_1
    if-eqz v3, :cond_3

    if-eq v4, v1, :cond_3

    .line 3461
    new-instance v2, Landroid/net/LinkAddress;

    const/4 v6, 0x0

    move v5, p1

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v2 .. v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;IIIJJ)V

    return-object v2

    .line 3458
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid link address "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5742
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "toString"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :catch_0
    move-exception v2

    .line 5744
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    .line 5746
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    instance-of v2, p0, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    goto/16 :goto_9

    .line 5749
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const-string v3, ", "

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 5751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5753
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 5754
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 5755
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 5759
    :cond_2
    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    move v5, v1

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, p0, v1

    .line 5760
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    goto :goto_1

    :cond_3
    move v2, v5

    :cond_4
    if-eqz v2, :cond_5

    .line 5766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5768
    :cond_5
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5771
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5772
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5773
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, -0x1

    .line 5776
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getTag"

    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v7

    .line 5778
    invoke-virtual {v7}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :catch_2
    move v7, v6

    .line 5782
    :goto_2
    const-string v8, "="

    if-eq v7, v6, :cond_7

    .line 5786
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "_tagString"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5787
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5788
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 5790
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_b

    .line 5793
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5794
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5797
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5800
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 5803
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_4
    if-eqz v0, :cond_b

    .line 5806
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 5811
    :cond_7
    array-length v6, v5

    move v7, v1

    :goto_5
    if-ge v1, v6, :cond_a

    aget-object v9, v5, v1

    .line 5813
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_7

    .line 5814
    :cond_8
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5817
    :try_start_4
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception v9

    .line 5819
    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    move-object v9, v0

    :goto_6
    if-nez v9, :cond_9

    goto :goto_7

    .line 5822
    :cond_9
    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v4

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_b

    .line 5827
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5830
    :cond_b
    :goto_8
    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5831
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5747
    :cond_c
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist deactivateDataReasonToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 5109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5103
    :cond_0
    const-string p0, "HANDOVER"

    return-object p0

    .line 5105
    :cond_1
    const-string p0, "SHUTDOWN"

    return-object p0

    .line 5101
    :cond_2
    const-string p0, "NORMAL"

    return-object p0

    .line 5107
    :cond_3
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static blacklist getCaps(Lcom/android/internal/telephony/HalVersion;Z)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HalVersion;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5699
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5701
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5703
    const-string v1, "Radio Hal Version is UNKNOWN!"

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    .line 5706
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Radio Hal Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/HalVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5707
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5708
    const-string p0, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5709
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 5712
    const-string p0, "CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5713
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5714
    const-string p0, "CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5715
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5716
    const-string p0, "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5717
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5718
    const-string p0, "CAPABILITY_SLICING_CONFIG_SUPPORTED"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5719
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5720
    const-string p0, "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5721
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    return-object v0

    .line 5723
    :cond_1
    const-string p0, "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5724
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private static blacklist getCountryCodeForMccMnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4859
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4860
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "000"

    :cond_1
    const/4 v0, 0x2

    .line 4861
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4863
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable$MccMnc;->fromOperatorNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/MccTable$MccMnc;

    move-result-object p0

    .line 4864
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->geoCountryCodeForMccMnc(Lcom/android/internal/telephony/MccTable$MccMnc;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isPrimitiveOrWrapper(Ljava/lang/Class;)Z
    .locals 1

    .line 5731
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/RILUtils;->WRAPPER_CLASSES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 6334
    const-string v0, "RILUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 6338
    const-string v0, "RILUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist makeProfileId(II)I
    .locals 1

    if-lez p1, :cond_1

    .line 901
    invoke-static {}, Lcom/android/internal/telephony/RILUtils;->IsApAssistSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p0, :cond_0

    shl-int/lit8 p1, p1, 0xb

    or-int/2addr p0, p1

    return p0

    :cond_0
    shl-int/lit8 p0, p1, 0xb

    or-int/lit16 p0, p0, 0x7ff

    :cond_1
    return p0
.end method

.method public static blacklist primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 5038
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5039
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 5040
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist primitiveArrayToArrayList([I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5047
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5048
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 5049
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5056
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist requestToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2758

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 5536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5532
    :pswitch_0
    const-string p0, "IS_SATELLITE_ENABLED_FOR_CARRIER"

    return-object p0

    .line 5530
    :pswitch_1
    const-string p0, "SET_SATELLITE_ENABLED_FOR_CARRIER"

    return-object p0

    .line 5528
    :pswitch_2
    const-string p0, "SET_SATELLITE_PLMN"

    return-object p0

    .line 5526
    :pswitch_3
    const-string p0, "GET_SIMULTANEOUS_CALLING_SUPPORT"

    return-object p0

    .line 5524
    :pswitch_4
    const-string p0, "IS_SECURITY_ALGORITHMS_UPDATED_ENABLED"

    return-object p0

    .line 5522
    :pswitch_5
    const-string p0, "SET_SECURITY_ALGORITHMS_UPDATED_ENABLED"

    return-object p0

    .line 5520
    :pswitch_6
    const-string p0, "SET_CELLULAR_IDENTIFIER_DISCLOSED_ENABLED"

    return-object p0

    .line 5518
    :pswitch_7
    const-string p0, "IS_CELLULAR_IDENTIFIER_DISCLOSED_ENABLED"

    return-object p0

    .line 5506
    :pswitch_8
    const-string p0, "IS_NULL_CIPHER_AND_INTEGRITY_ENABLED"

    return-object p0

    .line 5516
    :pswitch_9
    const-string p0, "GET_LOCATION_PRIVACY_SETTING"

    return-object p0

    .line 5514
    :pswitch_a
    const-string p0, "SET_LOCATION_PRIVACY_SETTING"

    return-object p0

    .line 5512
    :pswitch_b
    const-string p0, "IS_N1_MODE_ENABLED"

    return-object p0

    .line 5510
    :pswitch_c
    const-string p0, "SET_N1_MODE_ENABLED"

    return-object p0

    .line 5508
    :pswitch_d
    const-string p0, "UPDATE_IMS_CALL_STATUS"

    return-object p0

    .line 5504
    :pswitch_e
    const-string p0, "SET_NULL_CIPHER_AND_INTEGRITY_ENABLED"

    return-object p0

    .line 5502
    :pswitch_f
    const-string p0, "TRIGGER_EPS_FALLBACK"

    return-object p0

    .line 5500
    :pswitch_10
    const-string p0, "SEND_ANBR_QUERY"

    return-object p0

    .line 5498
    :pswitch_11
    const-string p0, "STOP_IMS_TRAFFIC"

    return-object p0

    .line 5496
    :pswitch_12
    const-string p0, "START_IMS_TRAFFIC"

    return-object p0

    .line 5494
    :pswitch_13
    const-string p0, "UPDATE_IMS_REGISTRATION_INFO"

    return-object p0

    .line 5492
    :pswitch_14
    const-string p0, "SET_SRVCC_CALL_INFO"

    return-object p0

    .line 5490
    :pswitch_15
    const-string p0, "EXIT_EMERGENCY_MODE"

    return-object p0

    .line 5488
    :pswitch_16
    const-string p0, "CANCEL_EMERGENCY_NETWORK_SCAN"

    return-object p0

    .line 5486
    :pswitch_17
    const-string p0, "TRIGGER_EMERGENCY_NETWORK_SCAN"

    return-object p0

    .line 5484
    :pswitch_18
    const-string p0, "SET_EMERGENCY_MODE"

    return-object p0

    .line 5482
    :pswitch_19
    const-string p0, "GET_USAGE_SETTING"

    return-object p0

    .line 5480
    :pswitch_1a
    const-string p0, "SET_USAGE_SETTING"

    return-object p0

    .line 5478
    :pswitch_1b
    const-string p0, "IS_VONR_ENABLED"

    return-object p0

    .line 5476
    :pswitch_1c
    const-string p0, "ENABLE_VONR"

    return-object p0

    .line 5474
    :pswitch_1d
    const-string p0, "GET_SLICING_CONFIG"

    return-object p0

    .line 5472
    :pswitch_1e
    const-string p0, "GET_ALLOWED_NETWORK_TYPES_BITMAP"

    return-object p0

    .line 5470
    :pswitch_1f
    const-string p0, "SET_ALLOWED_NETWORK_TYPES_BITMAP"

    return-object p0

    .line 5468
    :pswitch_20
    const-string p0, "SET_DATA_THROTTLING"

    return-object p0

    .line 5466
    :pswitch_21
    const-string p0, "GET_HAL_DEVICE_CAPABILITIES"

    return-object p0

    .line 5464
    :pswitch_22
    const-string p0, "GET_SYSTEM_SELECTION_CHANNELS"

    return-object p0

    .line 5462
    :pswitch_23
    const-string p0, "CANCEL_HANDOVER"

    return-object p0

    .line 5460
    :pswitch_24
    const-string p0, "START_HANDOVER"

    return-object p0

    .line 5458
    :pswitch_25
    const-string p0, "RELEASE_PDU_SESSION_ID"

    return-object p0

    .line 5456
    :pswitch_26
    const-string p0, "ALLOCATE_PDU_SESSION_ID"

    return-object p0

    .line 5454
    :pswitch_27
    const-string p0, "IS_NR_DUAL_CONNECTIVITY_ENABLED"

    return-object p0

    .line 5452
    :pswitch_28
    const-string p0, "ENABLE_NR_DUAL_CONNECTIVITY"

    return-object p0

    .line 5450
    :pswitch_29
    const-string p0, "ENTER_SIM_DEPERSONALIZATION"

    return-object p0

    .line 5448
    :pswitch_2a
    const-string p0, "GET_BARRING_INFO"

    return-object p0

    .line 5446
    :pswitch_2b
    const-string p0, "SET_SYSTEM_SELECTION_CHANNELS"

    return-object p0

    .line 5444
    :pswitch_2c
    const-string p0, "GET_UICC_APPLICATIONS_ENABLEMENT"

    return-object p0

    .line 5442
    :pswitch_2d
    const-string p0, "ENABLE_UICC_APPLICATIONS"

    return-object p0

    .line 5440
    :pswitch_2e
    const-string p0, "SWITCH_DUAL_SIM_CONFIG"

    return-object p0

    .line 5438
    :pswitch_2f
    const-string p0, "GET_PHONE_CAPABILITY"

    return-object p0

    .line 5436
    :pswitch_30
    const-string p0, "EMERGENCY_DIAL"

    return-object p0

    .line 5434
    :pswitch_31
    const-string p0, "SET_PREFERRED_DATA_MODEM"

    return-object p0

    .line 5432
    :pswitch_32
    const-string p0, "SET_LINK_CAPACITY_REPORTING_CRITERIA"

    return-object p0

    .line 5430
    :pswitch_33
    const-string p0, "SET_SIGNAL_STRENGTH_REPORTING_CRITERIA"

    return-object p0

    .line 5428
    :pswitch_34
    const-string p0, "SET_LOGICAL_TO_PHYSICAL_SLOT_MAPPING"

    return-object p0

    .line 5426
    :pswitch_35
    const-string p0, "GET_SLOT_STATUS"

    return-object p0

    .line 5423
    :pswitch_36
    const-string p0, "DEVICE_IMEI"

    return-object p0

    .line 5421
    :pswitch_37
    const-string p0, "UPDATE_SIM_PHONEBOOK_RECORD"

    return-object p0

    .line 5419
    :pswitch_38
    const-string p0, "GET_SIM_PHONEBOOK_RECORDS"

    return-object p0

    .line 5417
    :pswitch_39
    const-string p0, "GET_SIM_PHONEBOOK_CAPACITY"

    return-object p0

    .line 5415
    :pswitch_3a
    const-string p0, "CDMA_SEND_SMS_EXPECT_MORE"

    return-object p0

    .line 5413
    :pswitch_3b
    const-string p0, "GET_MODEM_STATUS"

    return-object p0

    .line 5411
    :pswitch_3c
    const-string p0, "ENABLE_MODEM"

    return-object p0

    .line 5409
    :pswitch_3d
    const-string p0, "STOP_KEEPALIVE"

    return-object p0

    .line 5407
    :pswitch_3e
    const-string p0, "START_KEEPALIVE"

    return-object p0

    .line 5405
    :pswitch_3f
    const-string p0, "STOP_NETWORK_SCAN"

    return-object p0

    .line 5403
    :pswitch_40
    const-string p0, "START_NETWORK_SCAN"

    return-object p0

    .line 5401
    :pswitch_41
    const-string p0, "SET_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    .line 5399
    :pswitch_42
    const-string p0, "SET_SIM_CARD_POWER"

    return-object p0

    .line 5397
    :pswitch_43
    const-string p0, "SET_UNSOLICITED_RESPONSE_FILTER"

    return-object p0

    .line 5395
    :pswitch_44
    const-string p0, "SEND_DEVICE_STATE"

    return-object p0

    .line 5393
    :pswitch_45
    const-string p0, "GET_ALLOWED_CARRIERS"

    return-object p0

    .line 5391
    :pswitch_46
    const-string p0, "SET_ALLOWED_CARRIERS"

    return-object p0

    .line 5389
    :pswitch_47
    const-string p0, "GET_ACTIVITY_INFO"

    return-object p0

    .line 5387
    :pswitch_48
    const-string p0, "PULL_LCEDATA"

    return-object p0

    .line 5385
    :pswitch_49
    const-string p0, "STOP_LCE"

    return-object p0

    .line 5383
    :pswitch_4a
    const-string p0, "START_LCE"

    return-object p0

    .line 5381
    :pswitch_4b
    const-string p0, "SET_RADIO_CAPABILITY"

    return-object p0

    .line 5379
    :pswitch_4c
    const-string p0, "GET_RADIO_CAPABILITY"

    return-object p0

    .line 5377
    :pswitch_4d
    const-string p0, "SHUTDOWN"

    return-object p0

    .line 5375
    :pswitch_4e
    const-string p0, "SET_DATA_PROFILE"

    return-object p0

    .line 5373
    :pswitch_4f
    const-string p0, "SET_DC_RT_INFO_RATE"

    return-object p0

    .line 5371
    :pswitch_50
    const-string p0, "GET_DC_RT_INFO"

    return-object p0

    .line 5369
    :pswitch_51
    const-string p0, "SIM_AUTHENTICATION"

    return-object p0

    .line 5367
    :pswitch_52
    const-string p0, "GET_HARDWARE_CONFIG"

    return-object p0

    .line 5365
    :pswitch_53
    const-string p0, "ALLOW_DATA"

    return-object p0

    .line 5363
    :pswitch_54
    const-string p0, "SET_UICC_SUBSCRIPTION"

    return-object p0

    .line 5361
    :pswitch_55
    const-string p0, "NV_RESET_CONFIG"

    return-object p0

    .line 5359
    :pswitch_56
    const-string p0, "NV_WRITE_CDMA_PRL"

    return-object p0

    .line 5357
    :pswitch_57
    const-string p0, "NV_WRITE_ITEM"

    return-object p0

    .line 5355
    :pswitch_58
    const-string p0, "NV_READ_ITEM"

    return-object p0

    .line 5353
    :pswitch_59
    const-string p0, "SIM_TRANSMIT_APDU_CHANNEL"

    return-object p0

    .line 5351
    :pswitch_5a
    const-string p0, "SIM_CLOSE_CHANNEL"

    return-object p0

    .line 5349
    :pswitch_5b
    const-string p0, "SIM_OPEN_CHANNEL"

    return-object p0

    .line 5347
    :pswitch_5c
    const-string p0, "SIM_TRANSMIT_APDU_BASIC"

    return-object p0

    .line 5345
    :pswitch_5d
    const-string p0, "IMS_SEND_SMS"

    return-object p0

    .line 5343
    :pswitch_5e
    const-string p0, "IMS_REGISTRATION_STATE"

    return-object p0

    .line 5341
    :pswitch_5f
    const-string p0, "SET_INITIAL_ATTACH_APN"

    return-object p0

    .line 5339
    :pswitch_60
    const-string p0, "SET_CELL_INFO_LIST_RATE"

    return-object p0

    .line 5337
    :pswitch_61
    const-string p0, "GET_CELL_INFO_LIST"

    return-object p0

    .line 5335
    :pswitch_62
    const-string p0, "VOICE_RADIO_TECH"

    return-object p0

    .line 5333
    :pswitch_63
    const-string p0, "STK_SEND_ENVELOPE_WITH_STATUS"

    return-object p0

    .line 5331
    :pswitch_64
    const-string p0, "ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object p0

    .line 5329
    :pswitch_65
    const-string p0, "ISIM_AUTHENTICATION"

    return-object p0

    .line 5327
    :pswitch_66
    const-string p0, "CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object p0

    .line 5325
    :pswitch_67
    const-string p0, "REPORT_STK_SERVICE_IS_RUNNING"

    return-object p0

    .line 5323
    :pswitch_68
    const-string p0, "REPORT_SMS_MEMORY_STATUS"

    return-object p0

    .line 5321
    :pswitch_69
    const-string p0, "SET_SMSC_ADDRESS"

    return-object p0

    .line 5319
    :pswitch_6a
    const-string p0, "GET_SMSC_ADDRESS"

    return-object p0

    .line 5317
    :pswitch_6b
    const-string p0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 5315
    :pswitch_6c
    const-string p0, "DEVICE_IDENTITY"

    return-object p0

    .line 5313
    :pswitch_6d
    const-string p0, "CDMA_DELETE_SMS_ON_RUIM"

    return-object p0

    .line 5311
    :pswitch_6e
    const-string p0, "CDMA_WRITE_SMS_TO_RUIM"

    return-object p0

    .line 5309
    :pswitch_6f
    const-string p0, "CDMA_SUBSCRIPTION"

    return-object p0

    .line 5307
    :pswitch_70
    const-string p0, "CDMA_BROADCAST_ACTIVATION"

    return-object p0

    .line 5305
    :pswitch_71
    const-string p0, "CDMA_SET_BROADCAST_CONFIG"

    return-object p0

    .line 5303
    :pswitch_72
    const-string p0, "CDMA_GET_BROADCAST_CONFIG"

    return-object p0

    .line 5301
    :pswitch_73
    const-string p0, "GSM_BROADCAST_ACTIVATION"

    return-object p0

    .line 5299
    :pswitch_74
    const-string p0, "GSM_SET_BROADCAST_CONFIG"

    return-object p0

    .line 5297
    :pswitch_75
    const-string p0, "GSM_GET_BROADCAST_CONFIG"

    return-object p0

    .line 5295
    :pswitch_76
    const-string p0, "CDMA_SMS_ACKNOWLEDGE"

    return-object p0

    .line 5293
    :pswitch_77
    const-string p0, "CDMA_SEND_SMS"

    return-object p0

    .line 5291
    :pswitch_78
    const-string p0, "CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object p0

    .line 5289
    :pswitch_79
    const-string p0, "CDMA_BURST_DTMF"

    return-object p0

    .line 5287
    :pswitch_7a
    const-string p0, "CDMA_FLASH"

    return-object p0

    .line 5285
    :pswitch_7b
    const-string p0, "CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    .line 5283
    :pswitch_7c
    const-string p0, "CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    .line 5281
    :pswitch_7d
    const-string p0, "QUERY_TTY_MODE"

    return-object p0

    .line 5279
    :pswitch_7e
    const-string p0, "SET_TTY_MODE"

    return-object p0

    .line 5277
    :pswitch_7f
    const-string p0, "CDMA_QUERY_ROAMING_PREFERENCE"

    return-object p0

    .line 5275
    :pswitch_80
    const-string p0, "CDMA_SET_ROAMING_PREFERENCE"

    return-object p0

    .line 5273
    :pswitch_81
    const-string p0, "CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object p0

    .line 5271
    :pswitch_82
    const-string p0, "SET_LOCATION_UPDATES"

    return-object p0

    .line 5269
    :pswitch_83
    const-string p0, "GET_NEIGHBORING_CELL_IDS"

    return-object p0

    .line 5267
    :pswitch_84
    const-string p0, "GET_PREFERRED_NETWORK_TYPE"

    return-object p0

    .line 5265
    :pswitch_85
    const-string p0, "SET_PREFERRED_NETWORK_TYPE"

    return-object p0

    .line 5263
    :pswitch_86
    const-string p0, "EXPLICIT_CALL_TRANSFER"

    return-object p0

    .line 5261
    :pswitch_87
    const-string p0, "STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object p0

    .line 5259
    :pswitch_88
    const-string p0, "STK_SEND_TERMINAL_RESPONSE"

    return-object p0

    .line 5257
    :pswitch_89
    const-string p0, "STK_SEND_ENVELOPE_COMMAND"

    return-object p0

    .line 5255
    :pswitch_8a
    const-string p0, "STK_SET_PROFILE"

    return-object p0

    .line 5253
    :pswitch_8b
    const-string p0, "STK_GET_PROFILE"

    return-object p0

    .line 5251
    :pswitch_8c
    const-string p0, "QUERY_AVAILABLE_BAND_MODE"

    return-object p0

    .line 5249
    :pswitch_8d
    const-string p0, "SET_BAND_MODE"

    return-object p0

    .line 5247
    :pswitch_8e
    const-string p0, "DELETE_SMS_ON_SIM"

    return-object p0

    .line 5245
    :pswitch_8f
    const-string p0, "WRITE_SMS_TO_SIM"

    return-object p0

    .line 5243
    :pswitch_90
    const-string p0, "SET_SUPP_SVC_NOTIFICATION"

    return-object p0

    .line 5241
    :pswitch_91
    const-string p0, "SCREEN_STATE"

    return-object p0

    .line 5239
    :pswitch_92
    const-string p0, "OEM_HOOK_STRINGS"

    return-object p0

    .line 5237
    :pswitch_93
    const-string p0, "OEM_HOOK_RAW"

    return-object p0

    .line 5235
    :pswitch_94
    const-string p0, "RESET_RADIO"

    return-object p0

    .line 5233
    :pswitch_95
    const-string p0, "DATA_CALL_LIST"

    return-object p0

    .line 5231
    :pswitch_96
    const-string p0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object p0

    .line 5229
    :pswitch_97
    const-string p0, "QUERY_CLIP"

    return-object p0

    .line 5227
    :pswitch_98
    const-string p0, "GET_MUTE"

    return-object p0

    .line 5225
    :pswitch_99
    const-string p0, "SET_MUTE"

    return-object p0

    .line 5223
    :pswitch_9a
    const-string p0, "SEPARATE_CONNECTION"

    return-object p0

    .line 5221
    :pswitch_9b
    const-string p0, "BASEBAND_VERSION"

    return-object p0

    .line 5219
    :pswitch_9c
    const-string p0, "DTMF_STOP"

    return-object p0

    .line 5217
    :pswitch_9d
    const-string p0, "DTMF_START"

    return-object p0

    .line 5215
    :pswitch_9e
    const-string p0, "QUERY_AVAILABLE_NETWORKS "

    return-object p0

    .line 5213
    :pswitch_9f
    const-string p0, "SET_NETWORK_SELECTION_MANUAL"

    return-object p0

    .line 5211
    :pswitch_a0
    const-string p0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object p0

    .line 5209
    :pswitch_a1
    const-string p0, "QUERY_NETWORK_SELECTION_MODE"

    return-object p0

    .line 5207
    :pswitch_a2
    const-string p0, "CHANGE_BARRING_PASSWORD"

    return-object p0

    .line 5205
    :pswitch_a3
    const-string p0, "SET_FACILITY_LOCK"

    return-object p0

    .line 5203
    :pswitch_a4
    const-string p0, "QUERY_FACILITY_LOCK"

    return-object p0

    .line 5201
    :pswitch_a5
    const-string p0, "DEACTIVATE_DATA_CALL"

    return-object p0

    .line 5199
    :pswitch_a6
    const-string p0, "ANSWER"

    return-object p0

    .line 5197
    :pswitch_a7
    const-string p0, "GET_IMEISV"

    return-object p0

    .line 5195
    :pswitch_a8
    const-string p0, "GET_IMEI"

    return-object p0

    .line 5193
    :pswitch_a9
    const-string p0, "SMS_ACKNOWLEDGE"

    return-object p0

    .line 5191
    :pswitch_aa
    const-string p0, "SET_CALL_WAITING"

    return-object p0

    .line 5189
    :pswitch_ab
    const-string p0, "QUERY_CALL_WAITING"

    return-object p0

    .line 5187
    :pswitch_ac
    const-string p0, "SET_CALL_FORWARD"

    return-object p0

    .line 5185
    :pswitch_ad
    const-string p0, "QUERY_CALL_FORWARD_STATUS"

    return-object p0

    .line 5183
    :pswitch_ae
    const-string p0, "SET_CLIR"

    return-object p0

    .line 5181
    :pswitch_af
    const-string p0, "GET_CLIR"

    return-object p0

    .line 5179
    :pswitch_b0
    const-string p0, "CANCEL_USSD"

    return-object p0

    .line 5177
    :pswitch_b1
    const-string p0, "SEND_USSD"

    return-object p0

    .line 5175
    :pswitch_b2
    const-string p0, "SIM_IO"

    return-object p0

    .line 5173
    :pswitch_b3
    const-string p0, "SETUP_DATA_CALL"

    return-object p0

    .line 5171
    :pswitch_b4
    const-string p0, "SEND_SMS_EXPECT_MORE"

    return-object p0

    .line 5169
    :pswitch_b5
    const-string p0, "SEND_SMS"

    return-object p0

    .line 5167
    :pswitch_b6
    const-string p0, "DTMF"

    return-object p0

    .line 5165
    :pswitch_b7
    const-string p0, "RADIO_POWER"

    return-object p0

    .line 5163
    :pswitch_b8
    const-string p0, "OPERATOR"

    return-object p0

    .line 5161
    :pswitch_b9
    const-string p0, "DATA_REGISTRATION_STATE"

    return-object p0

    .line 5159
    :pswitch_ba
    const-string p0, "VOICE_REGISTRATION_STATE"

    return-object p0

    .line 5157
    :pswitch_bb
    const-string p0, "SIGNAL_STRENGTH"

    return-object p0

    .line 5155
    :pswitch_bc
    const-string p0, "LAST_CALL_FAIL_CAUSE"

    return-object p0

    .line 5153
    :pswitch_bd
    const-string p0, "UDUB"

    return-object p0

    .line 5151
    :pswitch_be
    const-string p0, "CONFERENCE"

    return-object p0

    .line 5149
    :pswitch_bf
    const-string p0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object p0

    .line 5147
    :pswitch_c0
    const-string p0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object p0

    .line 5145
    :pswitch_c1
    const-string p0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object p0

    .line 5143
    :pswitch_c2
    const-string p0, "HANGUP"

    return-object p0

    .line 5141
    :pswitch_c3
    const-string p0, "GET_IMSI"

    return-object p0

    .line 5139
    :pswitch_c4
    const-string p0, "DIAL"

    return-object p0

    .line 5137
    :pswitch_c5
    const-string p0, "GET_CURRENT_CALLS"

    return-object p0

    .line 5135
    :pswitch_c6
    const-string p0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object p0

    .line 5133
    :pswitch_c7
    const-string p0, "CHANGE_SIM_PIN2"

    return-object p0

    .line 5131
    :pswitch_c8
    const-string p0, "CHANGE_SIM_PIN"

    return-object p0

    .line 5129
    :pswitch_c9
    const-string p0, "ENTER_SIM_PUK2"

    return-object p0

    .line 5127
    :pswitch_ca
    const-string p0, "ENTER_SIM_PIN2"

    return-object p0

    .line 5125
    :pswitch_cb
    const-string p0, "ENTER_SIM_PUK"

    return-object p0

    .line 5123
    :pswitch_cc
    const-string p0, "ENTER_SIM_PIN"

    return-object p0

    .line 5121
    :pswitch_cd
    const-string p0, "GET_SIM_STATUS"

    return-object p0

    .line 5534
    :cond_0
    const-string p0, "SAT_SEND_SMS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist responseToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 5687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5685
    :pswitch_0
    const-string p0, "UNSOL_SIMULTANEOUS_CALLING_SUPPORT_CHANGED"

    return-object p0

    .line 5683
    :pswitch_1
    const-string p0, "UNSOL_IMEI_MAPPING_CHANGED"

    return-object p0

    .line 5679
    :pswitch_2
    const-string p0, "UNSOL_NOTIFY_ANBR"

    return-object p0

    .line 5677
    :pswitch_3
    const-string p0, "UNSOL_CONNECTION_SETUP_FAILURE"

    return-object p0

    .line 5681
    :pswitch_4
    const-string p0, "UNSOL_TRIGGER_IMS_DEREGISTRATION"

    return-object p0

    .line 5675
    :pswitch_5
    const-string p0, "UNSOL_EMERGENCY_NETWORK_SCAN_RESULT"

    return-object p0

    .line 5673
    :pswitch_6
    const-string p0, "UNSOL_BARRING_INFO_CHANGED"

    return-object p0

    .line 5671
    :pswitch_7
    const-string p0, "UNSOL_REGISTRATION_FAILED"

    return-object p0

    .line 5669
    :pswitch_8
    const-string p0, "UNSOL_UICC_APPLICATIONS_ENABLEMENT_CHANGED"

    return-object p0

    .line 5667
    :pswitch_9
    const-string p0, "UNSOL_EMERGENCY_NUMBER_LIST"

    return-object p0

    .line 5665
    :pswitch_a
    const-string p0, "UNSOL_PHYSICAL_CHANNEL_CONFIG"

    return-object p0

    .line 5663
    :pswitch_b
    const-string p0, "UNSOL_ICC_SLOT_STATUS"

    return-object p0

    .line 5660
    :pswitch_c
    const-string p0, "UNSOL_SECURITY_ALGORITHMS_UPDATED"

    return-object p0

    .line 5658
    :pswitch_d
    const-string p0, "UNSOL_CELLULAR_IDENTIFIER_DISCLOSED"

    return-object p0

    .line 5656
    :pswitch_e
    const-string p0, "UNSOL_SLICING_CONFIG_CHANGED"

    return-object p0

    .line 5654
    :pswitch_f
    const-string p0, "UNSOL_RESPONSE_SIM_PHONEBOOK_RECORDS_RECEIVED"

    return-object p0

    .line 5652
    :pswitch_10
    const-string p0, "UNSOL_RESPONSE_SIM_PHONEBOOK_CHANGED"

    return-object p0

    .line 5650
    :pswitch_11
    const-string p0, "UNSOL_UNTHROTTLE_APN"

    return-object p0

    .line 5648
    :pswitch_12
    const-string p0, "UNSOL_KEEPALIVE_STATUS"

    return-object p0

    .line 5646
    :pswitch_13
    const-string p0, "UNSOL_NETWORK_SCAN_RESULT"

    return-object p0

    .line 5644
    :pswitch_14
    const-string p0, "UNSOL_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    .line 5642
    :pswitch_15
    const-string p0, "UNSOL_MODEM_RESTART"

    return-object p0

    .line 5640
    :pswitch_16
    const-string p0, "UNSOL_PCO_DATA"

    return-object p0

    .line 5638
    :pswitch_17
    const-string p0, "UNSOL_LCE_INFO_RECV"

    return-object p0

    .line 5636
    :pswitch_18
    const-string p0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object p0

    .line 5634
    :pswitch_19
    const-string p0, "UNSOL_ON_SS"

    return-object p0

    .line 5632
    :pswitch_1a
    const-string p0, "UNSOL_RADIO_CAPABILITY"

    return-object p0

    .line 5630
    :pswitch_1b
    const-string p0, "UNSOL_DC_RT_INFO_CHANGED"

    return-object p0

    .line 5628
    :pswitch_1c
    const-string p0, "UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object p0

    .line 5626
    :pswitch_1d
    const-string p0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object p0

    .line 5624
    :pswitch_1e
    const-string p0, "UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object p0

    .line 5622
    :pswitch_1f
    const-string p0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object p0

    .line 5620
    :pswitch_20
    const-string p0, "UNSOL_CELL_INFO_LIST"

    return-object p0

    .line 5618
    :pswitch_21
    const-string p0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object p0

    .line 5616
    :pswitch_22
    const-string p0, "UNSOL_RIL_CONNECTED"

    return-object p0

    .line 5614
    :pswitch_23
    const-string p0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 5612
    :pswitch_24
    const-string p0, "UNSOL_CDMA_PRL_CHANGED"

    return-object p0

    .line 5610
    :pswitch_25
    const-string p0, "UNSOL_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object p0

    .line 5608
    :pswitch_26
    const-string p0, "UNSOL_RESEND_INCALL_MUTE"

    return-object p0

    .line 5606
    :pswitch_27
    const-string p0, "UNSOL_RINGBACK_TONE"

    return-object p0

    .line 5604
    :pswitch_28
    const-string p0, "UNSOL_OEM_HOOK_RAW"

    return-object p0

    .line 5602
    :pswitch_29
    const-string p0, "UNSOL_CDMA_INFO_REC"

    return-object p0

    .line 5600
    :pswitch_2a
    const-string p0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object p0

    .line 5598
    :pswitch_2b
    const-string p0, "UNSOL_CDMA_CALL_WAITING"

    return-object p0

    .line 5596
    :pswitch_2c
    const-string p0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 5594
    :pswitch_2d
    const-string p0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object p0

    .line 5592
    :pswitch_2e
    const-string p0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object p0

    .line 5590
    :pswitch_2f
    const-string p0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object p0

    .line 5588
    :pswitch_30
    const-string p0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object p0

    .line 5586
    :pswitch_31
    const-string p0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object p0

    .line 5584
    :pswitch_32
    const-string p0, "UNSOL_CALL_RING"

    return-object p0

    .line 5582
    :pswitch_33
    const-string p0, "UNSOL_SIM_REFRESH"

    return-object p0

    .line 5580
    :pswitch_34
    const-string p0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object p0

    .line 5578
    :pswitch_35
    const-string p0, "UNSOL_STK_CALL_SETUP"

    return-object p0

    .line 5576
    :pswitch_36
    const-string p0, "UNSOL_STK_EVENT_NOTIFY"

    return-object p0

    .line 5574
    :pswitch_37
    const-string p0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object p0

    .line 5572
    :pswitch_38
    const-string p0, "UNSOL_STK_SESSION_END"

    return-object p0

    .line 5570
    :pswitch_39
    const-string p0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object p0

    .line 5568
    :pswitch_3a
    const-string p0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object p0

    .line 5566
    :pswitch_3b
    const-string p0, "UNSOL_SIGNAL_STRENGTH"

    return-object p0

    .line 5564
    :pswitch_3c
    const-string p0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object p0

    .line 5562
    :pswitch_3d
    const-string p0, "UNSOL_ON_USSD_REQUEST"

    return-object p0

    .line 5560
    :pswitch_3e
    const-string p0, "UNSOL_ON_USSD"

    return-object p0

    .line 5558
    :pswitch_3f
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object p0

    .line 5556
    :pswitch_40
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object p0

    .line 5554
    :pswitch_41
    const-string p0, "UNSOL_RESPONSE_NEW_SMS"

    return-object p0

    .line 5552
    :pswitch_42
    const-string p0, "UNSOL_RESPONSE_NETWORK_STATE_CHANGED"

    return-object p0

    .line 5550
    :pswitch_43
    const-string p0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object p0

    .line 5548
    :pswitch_44
    const-string p0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41c
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x44c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist scanTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 4933
    const-string p0, "NO_PREFERENCE"

    return-object p0

    .line 4931
    :cond_0
    const-string p0, "FULL_SERVICE"

    return-object p0

    .line 4929
    :cond_1
    const-string p0, "LIMITED_SERVICE"

    return-object p0
.end method

.method public static blacklist setupDataReasonToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 5088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5084
    :cond_0
    const-string p0, "HANDOVER"

    return-object p0

    .line 5082
    :cond_1
    const-string p0, "NORMAL"

    return-object p0

    .line 5086
    :cond_2
    const-string p0, "UNKNOWN"

    return-object p0
.end method
