.class final enum Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;
.super Ljava/lang/Enum;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SendRiLCommandReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

.field public static final enum blacklist MODEM_REQUESTED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

.field public static final enum blacklist PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

.field public static final enum blacklist PRIMARY_DATA_PHONEID_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;
    .locals 4

    .line 57
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    sget-object v2, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_PHONEID_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    sget-object v3, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->MODEM_REQUESTED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    const-string v1, "PRIMARY_DATA_CHANGED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    const-string v1, "PRIMARY_DATA_PHONEID_CHANGED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->PRIMARY_DATA_PHONEID_CHANGED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    const-string v1, "MODEM_REQUESTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->MODEM_REQUESTED:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->$values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 57
    const-class v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$SendRiLCommandReason;

    return-object v0
.end method
