.class public final enum Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;
.super Ljava/lang/Enum;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DelayReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

.field public static final enum blacklist NETWORK_MODE_CHANGING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

.field public static final enum blacklist PDN_DISCONNECTING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;
    .locals 3

    .line 641
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->PDN_DISCONNECTING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    sget-object v2, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->NETWORK_MODE_CHANGING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 642
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    const-string v1, "PDN_DISCONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->PDN_DISCONNECTING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    const-string v1, "NETWORK_MODE_CHANGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->NETWORK_MODE_CHANGING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    .line 641
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->$values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 641
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 641
    const-class v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;
    .locals 1

    .line 641
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$DelayReason;

    return-object v0
.end method
