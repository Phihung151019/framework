.class final enum Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;
.super Ljava/lang/Enum;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PreferredDataReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist AUTODDS:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist CROSSSIMCALLING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist EMERGENCY:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist NOCARD:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist OPPORTUNISTIC:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist PRIMARYDATA:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist REQUEST:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

.field public static final enum blacklist VOICECALL:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;
    .locals 8

    .line 64
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->NOCARD:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->EMERGENCY:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    sget-object v2, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->VOICECALL:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    sget-object v3, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->REQUEST:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    sget-object v4, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    sget-object v5, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->PRIMARYDATA:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    sget-object v6, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->AUTODDS:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    sget-object v7, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->CROSSSIMCALLING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    filled-new-array/range {v0 .. v7}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "NOCARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->NOCARD:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "EMERGENCY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->EMERGENCY:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "VOICECALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->VOICECALL:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "REQUEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->REQUEST:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "OPPORTUNISTIC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "PRIMARYDATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->PRIMARYDATA:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "AUTODDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->AUTODDS:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    const-string v1, "CROSSSIMCALLING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->CROSSSIMCALLING:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->$values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 64
    const-class v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$PreferredDataReason;

    return-object v0
.end method
