.class public final Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallForwardingConstants;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringConstants;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ClirConstants;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;
    }
.end annotation


# static fields
.field private static final API_REV_2018102701:I = 0x7849cdad

.field private static final API_REV_2018102901:I = 0x7849ce75

.field private static final API_REV_2018110301:I = 0x7849eb5d

.field private static final API_REV_2018111401:I = 0x7849efa9

.field private static final API_REV_2020060901:I = 0x7867aee5

.field private static final API_REV_2021070801:I = 0x787717d1

.field public static final DEFAULT_SLOT_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemTelephoneSDK"

.field private static final VERSION:Ljava/lang/String; = "1.1.1"

.field private static final sHandlerThread:Landroid/os/HandlerThread;

.field private static final sMainHandler:Landroid/os/Handler;

.field private static volatile sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

.field private static final sWorkerHandler:Landroid/os/Handler;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$-5G57rkjZo_topwYY5z8wARRUdU(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setIccEpsLoci$23(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-hB_yUaSwNEscjVpWH1rL74dFP4(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$preBind$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$1NWpWyZel-n-LWxgO1ngOlPBCJ8(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getCallingLineIdentificationRestriction$113(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2CAbXhCnjVcEiZjvz0WLbAr0QWI(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$changeIccFdnPassword$30(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2DGMjwkUvEmoxHCcMCqF6P5ljtY(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setDataRoamingEnabled$72(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4dUm0O0mcHZEJNk_5lstYrFoJKE(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$notifyVoicemailNumberChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7jHwo6JTIaG0aNaYyXqnOAebzMw(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isCallWaitingEnabled$37(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Pj76gKIDv0LAiQR78dVFpeM3-E(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getIncomingCallBarringInfoList$47(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8UyX5rJExLkFXScEy1nPeGohLPo(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setIncomingCallBarringInfoList$49([Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9lx7ikyZCL97YgJyWMDhlitOkGM(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getIccPersoSubState$35(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CulsJOPM8iIwnLzAFdAUrHDwE28(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isNetworkPolicyRestrictBackground$4(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DNRHfTuZePbV49EOFbkVi69F4d8(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getIccPuk2RetryCount$13(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FeYFAs9RE1MCC32qlPGnS3qcKF8(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCallingLineIdentificationRestriction$115(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HAL6PcIy5BRXh2ACnF46MhThoXw(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getActiveFgCall$63(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hmohj8eTQF5UdrOJ3DbDcIZSD3M(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$changeIccFdnPasswordBySupplyPuk2$32(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HqkY7_-PWFP9wds1AIEsKtWIEJw(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setIccPsLoci$26(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IfYIsIN33RvafJZ9qJvlmovIN3U(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setNetwork$98(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JxzkxspGprqWcz5VDLlkrj600yI(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setIccLoci$28(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KNzAmLnzXAzrh1EtshfKGZPmOyE(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setAllowedNetworkTypes$88(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBEUc5drl-F0LHhGdOK9NuPiGaA(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getIccPin2RetryCount$7(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LjJ6J3uYLM451w9OktWh4NcHxGY(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$invokeOemRilRequestRaw$90(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MzLG6-SmpCS3ErSd6odGm0qsc6I(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCdmaSubscription$94(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NuoD-LGi1zJ56jErOxTj6FcOwxo(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setNetwork$92(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OaY8cQeO999ffEYt4hkkToqEov8(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setVoiceMailNumber$104(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P15adFytHIWKxkeQoSk2yjkjr1M(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isIccFdnEnabled$16(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PB_Di_suaYncAhgbTuh8gdIh4Ag(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setIccFplmn$117(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZVaOdduLampuq90B_vD-9iiWrE(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setPreferredNetworkType$83(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q-huNNdPvC85Ur9J64OaFXohKyU(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setPreferredNetworkInfo$79(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q4y1Z4nvC0eP6-mIAeQGrijfWYo(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCallBarringEnabled$43(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RX-WkPuDzNZETVV5XvH3jNZoz1k(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCsg$102(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UrgE4nQeIh6vWeW-I8nu3H-lrh0(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getIccPin2Blocked$10(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V0eamRnsCfvznEPfPwq53R5LkHk(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getPreferredNetworkInfoList$77(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VeTB5WRjymN0n4eNjSSqNp_9QiE(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCallForwardingOption$53(IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1hjbyRWXXX-EwXGhbMHw5ubKbw(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isOcsglAvailable$69(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_G_s54QsLcSU16ABncs0F8IYclw(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getPreferredNetworkType$81(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSXtj72rKiywnfCyv9X_bOtimzw(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCsg$106(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b6N_5MaCkh2kcqPctDzAFwMXqJQ(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setEnhancedVoicePrivacy$60(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSyaPHqqW_akMCKRyNNip2hpsCU(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setIccFdnEnabled$21(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTWsG1kHRP-DIFrYxpTOC0It4mc(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getCsgList$100(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$foEWu3rhpDezXHfMMWTttqpg7QI(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isCallBarringEnabled$41(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gempeY6BBjHtOsqa-9zMUjjuFzs(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setIccNetworkDepersonalization$111(ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i6I-8k5g4w3ykbtS4zZJcWTvSac(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isCspPlmnEnabled$66(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUk5ZD39iFs0Gyw4wd7sc8Iv3FI(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCallWaitingEnabled$39(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kmm02dm76jqusSbPZ2NetF7MQx4(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getEnhancedVoicePrivacy$58(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lP5SoGq1X81GH6OweCyH2H5GEWU(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setInternalPdnEnabled$109(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mugCQzVU2fRmZX5S535c2U-t-8k(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getCallForwardingOption$51(IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o4r02GYddl04vD3lUWTM7zL0N3g(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getAvailableNetworkList$96(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v9HGN2BYOdO_IHqGwkue7UvXlP0(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isFdnAvailable$19(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wf2ReTbJj9lXXnT5mgWpiqRLPuY(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setRadioPowerEnabled$75(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFHABRApABXok-Dy1Tktvc14nhM(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$changeCallBarringPassword$45(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yyAGivh1XfGV3VZc4erq2rwWPgA(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getAllowedNetworkTypes$86(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCallForwardingCallback(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ZLjava/util/List;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->handleCallForwardingCallback(ZLjava/util/List;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpostOnMain(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sMainHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemTelephoneSDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sHandlerThread:Landroid/os/HandlerThread;

    .line 65
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sWorkerHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private createIcBarringResultListener(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            ">;)",
            "Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;"
        }
    .end annotation

    .line 702
    .local p1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-object v0
.end method

.method private static getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->needToReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-class v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->needToReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "SemTelephoneSDK"

    const-string v2, "ServiceBindHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    .line 115
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 117
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->waitToGetConnected()V

    .line 118
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->getServiceApi()Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "1.1.1"

    return-object v0
.end method

.method private handleCallForwardingCallback(ZLjava/util/List;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 10
    .param p1, "success"    # Z
    .param p3, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallForwardingCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephoneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v2, 0x3

    .line 800
    .local v2, "expectedSizeOfList":I
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 801
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 802
    .local v6, "status":I
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 803
    .local v7, "timeSecond":I
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 804
    .local v8, "number":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda17;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, p1

    move-object v9, p3

    move-object v4, p4

    .end local p1    # "success":Z
    .end local p3    # "err":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v5, "success":Z
    .local v9, "err":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 805
    .end local v6    # "status":I
    .end local v7    # "timeSecond":I
    .end local v8    # "number":Ljava/lang/String;
    goto :goto_0

    .line 808
    .end local v4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "success":Z
    .end local v9    # "err":Ljava/lang/String;
    .restart local p1    # "success":Z
    .restart local p3    # "err":Ljava/lang/String;
    .restart local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move v5, p1

    move-object v9, p3

    move-object v4, p4

    move-object p1, v0

    .end local p1    # "success":Z
    .end local p3    # "err":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "success":Z
    .restart local v9    # "err":Ljava/lang/String;
    goto :goto_1

    .line 800
    .end local v4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "success":Z
    .end local v9    # "err":Ljava/lang/String;
    .restart local p1    # "success":Z
    .restart local p3    # "err":Ljava/lang/String;
    .restart local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    move v5, p1

    move-object v9, p3

    move-object v4, p4

    .line 806
    .end local p1    # "success":Z
    .end local p3    # "err":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "success":Z
    .restart local v9    # "err":Ljava/lang/String;
    new-instance p1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda18;

    invoke-direct {p1, v4, v5, v9}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 812
    :goto_0
    goto :goto_2

    .line 808
    :catch_1
    move-exception v0

    move-object p1, v0

    .line 810
    .local p1, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string p3, "handleCallForwardingCallback"

    invoke-static {v1, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    new-instance p3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda19;

    invoke-direct {p3, v4, v5, v9}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 813
    .end local p1    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method static synthetic lambda$changeCallBarringPassword$44(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 644
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$changeCallBarringPassword$45(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$10;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$10;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "changeCallBarringPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda79;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda79;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$changeIccFdnPassword$29(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$changeIccFdnPassword$30(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$4;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$4;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "changeIccFdnPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    if-eqz p4, :cond_0

    .line 416
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda5;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$changeIccFdnPasswordBySupplyPuk2$31(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$changeIccFdnPasswordBySupplyPuk2$32(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$5;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$5;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "changeIccFdnPasswordBySupplyPuk2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    if-eqz p4, :cond_0

    .line 447
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda104;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda104;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$getActiveFgCall$61(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "state"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 885
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getActiveFgCall$62(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 888
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->IDLE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getActiveFgCall$63(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getActiveFgCallState()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "stateStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    move-result-object v1

    .line 885
    .local v1, "state":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda85;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda85;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v0    # "stateStr":Ljava/lang/String;
    .end local v1    # "state":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getActiveFgCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 890
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getAllowedNetworkTypes$84(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "networkMode"    # I

    .line 1125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAllowedNetworkTypes$85(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1128
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getAllowedNetworkTypes$86(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1123
    const v0, 0x787717d1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 1124
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getAllowedNetworkTypes(I)I

    move-result v0

    .line 1125
    .local v0, "networkMode":I
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda22;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda22;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .end local v0    # "networkMode":I
    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getAllowedNetworkTypes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda23;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getAvailableNetworkList$95(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1293
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getAvailableNetworkList$96(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1273
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$24;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$24;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    goto :goto_0

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getAvailableNetworkList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1293
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda77;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda77;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getCallForwardingOption$50(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V
    .locals 7
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 753
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v4, v3

    move-object v1, p0

    .end local p0    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .local v1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getCallForwardingOption$51(IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$12;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$12;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getCallForwardingOption"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda24;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 755
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getCallingLineIdentificationRestriction$112(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1541
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getCallingLineIdentificationRestriction$113(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    goto :goto_0

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getCallingLineIdentificationRestriction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1541
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda84;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda84;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1543
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$getCsgList$100(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$26;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$26;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    goto :goto_0

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getAvailableNetworkList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1363
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getCsgList$99(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1363
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEnhancedVoicePrivacy$57(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 838
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getEnhancedVoicePrivacy$58(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$14;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$14;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getEnhancedVoicePrivacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda65;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda65;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 840
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getIccPersoSubState$33(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/String;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "persoSubStateAsString"    # Ljava/lang/String;

    .line 468
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPersoSubState$34(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getIccPersoSubState$35(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPersoSubStateAsString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "persoSubStateAsString":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda51;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda51;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "persoSubStateAsString":Ljava/lang/String;
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPersoSubState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda52;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda52;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$getIccPin2Blocked$10(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isIccPin2Blocked(I)Z

    move-result v0

    .line 208
    .local v0, "isIccPin2Blocked":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda113;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda113;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0    # "isIccPin2Blocked":Z
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPin2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda114;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda114;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getIccPin2Blocked$8(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isIccPin2Blocked"    # Z

    .line 208
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2Blocked$9(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2RetryCount$5(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "pin2RetryCount"    # I

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2RetryCount$6(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 191
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getIccPin2RetryCount$7(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPin2RetryCount(I)I

    move-result v0

    .line 188
    .local v0, "pin2RetryCount":I
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda102;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda102;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "pin2RetryCount":I
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPin2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda103;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda103;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getIccPuk2RetryCount$11(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "pin2RetryCount"    # I

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPuk2RetryCount$12(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 231
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getIccPuk2RetryCount$13(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPuk2retryCount(I)I

    move-result v0

    .line 228
    .local v0, "pin2RetryCount":I
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0    # "pin2RetryCount":I
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPuk2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda63;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda63;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getIncomingCallBarringInfoList$46(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 664
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getIncomingCallBarringInfoList$47(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->createIcBarringResultListener(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIncomingCallBarringInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 666
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getPreferredNetworkInfoList$76(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1013
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getPreferredNetworkInfoList$77(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$16;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$16;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_0

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getPreferredNetworkInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1013
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1015
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$getPreferredNetworkType$80(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1073
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getPreferredNetworkType$81(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$18;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$18;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getPreferredNetworkType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda45;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda45;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1075
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$54(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "success"    # Z
    .param p2, "status"    # I
    .param p3, "timeSecond"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "err"    # Ljava/lang/String;

    .line 804
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    .end local p0    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .end local p1    # "success":Z
    .end local p4    # "number":Ljava/lang/String;
    .end local p5    # "err":Ljava/lang/String;
    .local v0, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .local v1, "success":Z
    .local v4, "number":Ljava/lang/String;
    .local v5, "err":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$55(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V
    .locals 7
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "success"    # Z
    .param p2, "err"    # Ljava/lang/String;

    .line 806
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    move-object v4, v3

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    .end local p0    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .end local p1    # "success":Z
    .end local p2    # "err":Ljava/lang/String;
    .local v1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .local v2, "success":Z
    .local v6, "err":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$56(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V
    .locals 7
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "success"    # Z
    .param p2, "err"    # Ljava/lang/String;

    .line 811
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    move-object v4, v3

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    .end local p0    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .end local p1    # "success":Z
    .end local p2    # "err":Ljava/lang/String;
    .local v1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .local v2, "success":Z
    .local v6, "err":Ljava/lang/String;
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$invokeOemRilRequestRaw$89(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$invokeOemRilRequestRaw$90(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "rawRequest"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "invokeOemRilRequestRaw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$isCallBarringEnabled$40(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 567
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isCallBarringEnabled$41(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$8;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$8;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isCallBarringEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda64;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda64;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 569
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$isCallWaitingEnabled$36(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 499
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isCallWaitingEnabled$37(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isCallWaitingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda67;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda67;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$isCspPlmnEnabled$64(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 905
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isCspPlmnEnabled$65(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 908
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isCspPlmnEnabled$66(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isCspPlmnEnabled(I)Z

    move-result v0

    .line 905
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda36;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda36;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v0    # "isEnabled":Z
    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isCspPlmnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda37;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda37;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 910
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$isFdnAvailable$17(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 268
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isFdnAvailable$18(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isFdnAvailable$19(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isFdnAvailable(I)Z

    move-result v0

    .line 268
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda93;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda93;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "isEnabled":Z
    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isFdnAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda94;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda94;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$isIccFdnEnabled$14(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isIccFdnEnabled$15(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 251
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isIccFdnEnabled$16(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isIccFdnEnabled(I)Z

    move-result v0

    .line 248
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda28;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda28;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "isEnabled":Z
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isIccFdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda29;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$isNetworkPolicyRestrictBackground$2(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isRestricted"    # Z

    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isNetworkPolicyRestrictBackground$3(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isNetworkPolicyRestrictBackground$4(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isNetworkPolicyRestrictBackground()Z

    move-result v0

    .line 168
    .local v0, "isRestricted":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda34;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "isRestricted":Z
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isNetworkPolicyRestrictBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda35;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda35;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$isOcsglAvailable$67(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 925
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isOcsglAvailable$68(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 928
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isOcsglAvailable$69(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isOCSGLAvailable(I)Z

    move-result v0

    .line 925
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda110;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda110;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .end local v0    # "isEnabled":Z
    goto :goto_0

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isOcsglAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda111;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda111;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 930
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyVoicemailNumberChanged$1(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 147
    const-string v0, "SemTelephoneSDK"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 148
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 150
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVoicemailNumberChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->notifyVoicemailNumberChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "subId":I
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "notifyVoicemailNumberChanged"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$preBind$0()V
    .locals 3

    .line 86
    const-string v0, "SemTelephoneSDK"

    :try_start_0
    const-string v1, "preBind() try to bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "preBind()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$setAllowedNetworkTypes$87(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setAllowedNetworkTypes$88(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1146
    const v0, 0x787717d1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 1147
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$20;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$20;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setAllowedNetworkTypes(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setAllowedNetworkTypes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    if-eqz p3, :cond_0

    .line 1158
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda73;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda73;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCallBarringEnabled$42(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 610
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCallBarringEnabled$43(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;

    invoke-direct {v7, p0, p6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "slotId":I
    .end local p2    # "isVideo":Z
    .end local p3    # "facility":Ljava/lang/String;
    .end local p4    # "isEnabled":Z
    .end local p5    # "password":Ljava/lang/String;
    .local v2, "slotId":I
    .local v3, "isVideo":Z
    .local v4, "facility":Ljava/lang/String;
    .local v5, "isEnabled":Z
    .local v6, "password":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v1 .. v7}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 611
    goto :goto_1

    .line 608
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "slotId":I
    .end local v3    # "isVideo":Z
    .end local v4    # "facility":Ljava/lang/String;
    .end local v5    # "isEnabled":Z
    .end local v6    # "password":Ljava/lang/String;
    .restart local p1    # "slotId":I
    .restart local p2    # "isVideo":Z
    .restart local p3    # "facility":Ljava/lang/String;
    .restart local p4    # "isEnabled":Z
    .restart local p5    # "password":Ljava/lang/String;
    :catch_1
    move-exception v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 609
    .end local p2    # "isVideo":Z
    .end local p3    # "facility":Ljava/lang/String;
    .end local p4    # "isEnabled":Z
    .end local p5    # "password":Ljava/lang/String;
    .restart local v2    # "slotId":I
    .restart local v3    # "isVideo":Z
    .restart local v4    # "facility":Ljava/lang/String;
    .restart local v5    # "isEnabled":Z
    .restart local v6    # "password":Ljava/lang/String;
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    const-string p2, "SemTelephoneSDK"

    const-string p3, "setCallBarringEnabled"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    new-instance p2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda75;

    invoke-direct {p2, p6, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda75;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 612
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic lambda$setCallForwardingOption$52(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V
    .locals 7
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 790
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v4, v3

    move-object v1, p0

    .end local p0    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .local v1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCallForwardingOption$53(IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    .line 780
    move-object/from16 v1, p7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v2

    new-instance v9, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;

    invoke-direct {v9, p0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SemTelephoneSDK"

    const-string v3, "setCallForwardingOption"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda97;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda97;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 792
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCallWaitingEnabled$38(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 527
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCallWaitingEnabled$39(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$7;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$7;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCallWaitingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    if-eqz p3, :cond_0

    .line 527
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda112;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda112;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCallingLineIdentificationRestriction$114(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1566
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCallingLineIdentificationRestriction$115(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1558
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$32;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$32;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    goto :goto_0

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCallingLineIdentificationRestriction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1566
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda87;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda87;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCdmaSubscription$93(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1255
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCdmaSubscription$94(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "cdmaSubscriptionType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$23;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$23;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCdmaSubscription"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    if-eqz p3, :cond_0

    .line 1255
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda68;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda68;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1258
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCsg$101(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1396
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCsg$102(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1384
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->-$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    goto :goto_0

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCsg2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1395
    if-eqz p4, :cond_0

    .line 1396
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda57;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda57;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1399
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setCsg$105(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1455
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCsg$106(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1444
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$29;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$29;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    goto :goto_0

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCsg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1454
    if-eqz p2, :cond_0

    .line 1455
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda41;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1458
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabled$70(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 946
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabled$71(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 951
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setDataRoamingEnabled$72(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setDataRoamingEnabled(IZ)V

    .line 945
    if-eqz p3, :cond_0

    .line 946
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda60;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda60;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :cond_0
    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setDataRoamingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    if-eqz p3, :cond_1

    .line 951
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda61;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda61;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 954
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setEnhancedVoicePrivacy$59(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 866
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setEnhancedVoicePrivacy$60(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$15;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$15;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setEnhancedVoicePrivacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    if-eqz p3, :cond_0

    .line 866
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda21;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda21;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccEpsLoci$22(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setIccEpsLoci$23(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$2;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$2;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccEpsLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    if-eqz p3, :cond_0

    .line 330
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda91;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda91;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccFdnEnabled$20(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setIccFdnEnabled$21(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$1;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccFdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    if-eqz p4, :cond_0

    .line 301
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccFplmn$116(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1595
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setIccFplmn$117(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "plmn"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1584
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$33;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$33;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    goto :goto_0

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccFplmn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    if-eqz p3, :cond_0

    .line 1595
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda70;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda70;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1598
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccLoci$27(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setIccLoci$28(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 373
    const v0, 0x7849efa9

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$3;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$3;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    if-eqz p3, :cond_0

    .line 385
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda92;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda92;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccNetworkDepersonalization$110(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1511
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setIccNetworkDepersonalization$111(ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1500
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$30;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$30;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    goto :goto_0

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccNetworkDepersonalization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1510
    if-eqz p4, :cond_0

    .line 1511
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda76;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda76;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1514
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIccPsLoci$24(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 350
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccPsLoci$25(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setIccPsLoci$26(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 347
    const v0, 0x7849eb5d

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccPsLoci(I[B)V

    .line 349
    if-eqz p3, :cond_0

    .line 350
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda38;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda38;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccPsLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    if-eqz p3, :cond_1

    .line 355
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda39;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda39;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setIncomingCallBarringInfoList$48(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 696
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setIncomingCallBarringInfoList$49([Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 9
    .param p1, "info"    # [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    .param p2, "slotId"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 682
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    .local v0, "icbList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x3

    .line 685
    .local v1, "capacity":I
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    .line 686
    .local v5, "icbInfo":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    new-instance v6, Landroid/os/Bundle;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 687
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "time"

    invoke-static {v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->-$$Nest$mgetFormattedTime(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v7, "icbnumber"

    iget-object v8, v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v7, "barringEnabled"

    iget-boolean v8, v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->barringEnabled:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 690
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    nop

    .end local v5    # "icbInfo":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    .end local v6    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v2

    new-array v3, v3, [Landroid/os/Bundle;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    invoke-direct {p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->createIcBarringResultListener(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;

    move-result-object v4

    invoke-interface {v2, p2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v0    # "icbList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v1    # "capacity":I
    goto :goto_1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIncomingCallBarringInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda100;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda100;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic lambda$setInternalPdnEnabled$107(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1475
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setInternalPdnEnabled$108(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1480
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setInternalPdnEnabled$109(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1473
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setInternalPdnEnabled(IZ)V

    .line 1474
    if-eqz p3, :cond_0

    .line 1475
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda53;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda53;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :cond_0
    goto :goto_0

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setInternalPdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    if-eqz p3, :cond_1

    .line 1480
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda54;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda54;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1483
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setNetwork$91(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setNetwork$92(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1212
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$22;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$22;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setNetwork1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1222
    if-eqz p2, :cond_0

    .line 1223
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda31;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda31;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setNetwork$97(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1326
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setNetwork$98(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1314
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->-$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    goto :goto_0

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setNetwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1325
    if-eqz p4, :cond_0

    .line 1326
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda47;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda47;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setPreferredNetworkInfo$78(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setPreferredNetworkInfo$79(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "networkInfo"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1031
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    .line 1032
    invoke-static {p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->-$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$17;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$17;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    .line 1031
    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setPreferredNetworkInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    if-eqz p3, :cond_0

    .line 1043
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda116;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda116;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1046
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setPreferredNetworkType$82(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setPreferredNetworkType$83(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1094
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$19;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$19;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setPreferredNetworkType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    if-eqz p3, :cond_0

    .line 1105
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda69;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda69;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setRadioPowerEnabled$73(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 971
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setRadioPowerEnabled$74(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 976
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setRadioPowerEnabled$75(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setRadioPower(IZ)V

    .line 970
    if-eqz p3, :cond_0

    .line 971
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda71;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda71;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :cond_0
    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setRadioPowerEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    if-eqz p3, :cond_1

    .line 976
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda72;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda72;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 979
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setVoiceMailNumber$103(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setVoiceMailNumber$104(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$28;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$28;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    goto :goto_0

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setVoiceMailNumber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1425
    if-eqz p4, :cond_0

    .line 1426
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda14;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1429
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private static needToReconnect()Z
    .locals 1

    .line 103
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    .line 104
    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$misServiceDisconnected(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 103
    :goto_1
    return v0
.end method

.method private static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 122
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method private static postOnMain(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 126
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method private requireApiRevision(I)V
    .locals 3
    .param p1, "minRevision"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->getApiRevision()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    return-void

    .line 132
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires API revision "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    sget-object v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    if-nez v2, :cond_2

    const-string v2, "unknown"

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->getApiRevision()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 631
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda78;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "oldPassword":Ljava/lang/String;
    .end local p3    # "newPassword":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    .local v2, "slotId":I
    .local v3, "oldPassword":Ljava/lang/String;
    .local v4, "newPassword":Ljava/lang/String;
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda78;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method public changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 403
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda25;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "oldPassword":Ljava/lang/String;
    .end local p3    # "newPassword":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .local v2, "slotId":I
    .local v3, "oldPassword":Ljava/lang/String;
    .local v4, "newPassword":Ljava/lang/String;
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method public changeIccFdnPasswordBySupplyPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 434
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda26;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "puk2":Ljava/lang/String;
    .end local p3    # "newPassword":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .local v2, "slotId":I
    .local v3, "puk2":Ljava/lang/String;
    .local v4, "newPassword":Ljava/lang/String;
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public getActiveFgCall(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;",
            ">;)V"
        }
    .end annotation

    .line 881
    .local p1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda81;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda81;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 891
    return-void
.end method

.method public getAllowedNetworkTypes(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 2
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1120
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    const-string v0, "SemTelephoneSDK"

    const-string v1, "getAllowedNetworkTypes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda27;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1131
    return-void
.end method

.method public getAvailableNetworkList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/util/List<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1271
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/util/List<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;>;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda32;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1296
    return-void
.end method

.method public getCallForwardingOption(IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda56;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "isVideo":Z
    .end local p3    # "reason":I
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v2, "slotId":I
    .local v3, "isVideo":Z
    .local v4, "reason":I
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda56;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 756
    return-void
.end method

.method public getCallingLineIdentificationRestriction(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1526
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda117;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda117;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1544
    return-void
.end method

.method public getCsgList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/util/List<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1342
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/util/List<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;>;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda96;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda96;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1366
    return-void
.end method

.method public getEnhancedVoicePrivacy(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 824
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda80;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda80;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method

.method public getIccPersoSubState(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda43;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public getIccPin2Blocked(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda109;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda109;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public getIccPin2RetryCount(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda59;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda59;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public getIccPuk2RetryCount(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda58;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public getIncomingCallBarringInfoList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 667
    return-void
.end method

.method public getPreferredNetworkInfoList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/util/List<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 992
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/util/List<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;>;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1016
    return-void
.end method

.method public getPreferredNetworkType(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1076
    return-void
.end method

.method public invokeOemRilRequestRaw(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "rawRequest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[B>;)V"
        }
    .end annotation

    .line 1174
    .local p3, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[B>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda105;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda105;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1199
    return-void
.end method

.method public isCallBarringEnabled(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "isVideo":Z
    .end local p3    # "facility":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    .local v2, "slotId":I
    .local v3, "isVideo":Z
    .local v4, "facility":Ljava/lang/String;
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method public isCallWaitingEnabled(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 502
    return-void
.end method

.method public isCspPlmnEnabled(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 902
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda108;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda108;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 911
    return-void
.end method

.method public isFdnAvailable(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda55;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public isIccFdnEnabled(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public isNetworkPolicyRestrictBackground(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda40;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public isOcsglAvailable(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 922
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda49;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method public notifyVoicemailNumberChanged(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 144
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public preBind()V
    .locals 1

    .line 84
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public setAllowedNetworkTypes(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1143
    const-string v0, "SemTelephoneSDK"

    const-string v1, "setAllowedNetworkTypes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda89;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1162
    return-void
.end method

.method public setCallBarringEnabled(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 597
    .local p6, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda48;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "slotId":I
    .end local p2    # "isVideo":Z
    .end local p3    # "facility":Ljava/lang/String;
    .end local p4    # "isEnabled":Z
    .end local p5    # "password":Ljava/lang/String;
    .end local p6    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    .local v2, "slotId":I
    .local v3, "isVideo":Z
    .local v4, "facility":Ljava/lang/String;
    .local v5, "isEnabled":Z
    .local v6, "password":Ljava/lang/String;
    .local v7, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda48;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 613
    return-void
.end method

.method public setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 778
    .local p7, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 793
    return-void
.end method

.method public setCallWaitingEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 514
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 531
    return-void
.end method

.method public setCallingLineIdentificationRestriction(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1556
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda88;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda88;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1570
    return-void
.end method

.method public setCdmaSubscription(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "cdmaSubscriptionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1239
    .local p3, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda98;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda98;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1259
    return-void
.end method

.method public setCsg(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1382
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda66;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "info":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .end local p3    # "isPersistent":Z
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .local v2, "slotId":I
    .local v3, "info":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .local v4, "isPersistent":Z
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda66;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1400
    return-void
.end method

.method public setCsg(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1442
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1459
    return-void
.end method

.method public setDataRoamingEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 942
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda115;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda115;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 955
    return-void
.end method

.method public setEnhancedVoicePrivacy(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 853
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda44;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method public setIccEpsLoci(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 317
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 288
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "isEnabled":Z
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .local v2, "slotId":I
    .local v3, "isEnabled":Z
    .local v4, "password":Ljava/lang/String;
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public setIccFplmn(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "plmn"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1582
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda83;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda83;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1599
    return-void
.end method

.method public setIccLoci(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 371
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda95;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda95;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public setIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1498
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda33;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "pin":Ljava/lang/String;
    .end local p3    # "type":I
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .local v2, "slotId":I
    .local v3, "pin":Ljava/lang/String;
    .local v4, "type":I
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1515
    return-void
.end method

.method public setIccPsLoci(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 345
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda30;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public setIncomingCallBarringInfoList(I[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "info"    # [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 680
    .local p3, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda74;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method public setInternalPdnEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1471
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda46;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1484
    return-void
.end method

.method public setNetwork(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1210
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda82;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda82;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1227
    return-void
.end method

.method public setNetwork(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1312
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda42;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "info":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .end local p3    # "isPersistent":Z
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .local v2, "slotId":I
    .local v3, "info":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .local v4, "isPersistent":Z
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda42;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1330
    return-void
.end method

.method public setPreferredNetworkInfo(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "networkInfo"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1029
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda90;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method

.method public setPreferredNetworkType(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1091
    const-string v0, "SemTelephoneSDK"

    const-string v1, "setPreferredNetworkType()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda101;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda101;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1109
    return-void
.end method

.method public setRadioPowerEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 967
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 980
    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1413
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda107;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "slotId":I
    .end local p2    # "alphaTag":Ljava/lang/String;
    .end local p3    # "number":Ljava/lang/String;
    .end local p4    # "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .local v2, "slotId":I
    .local v3, "alphaTag":Ljava/lang/String;
    .local v4, "number":Ljava/lang/String;
    .local v5, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda107;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1430
    return-void
.end method
