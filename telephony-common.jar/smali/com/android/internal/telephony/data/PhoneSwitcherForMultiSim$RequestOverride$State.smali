.class public final enum Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;
.super Ljava/lang/Enum;
.source "PhoneSwitcherForMultiSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

.field public static final enum blacklist OVERRIDE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

.field public static final enum blacklist RESTORE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;
    .locals 3

    .line 638
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    sget-object v1, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->OVERRIDE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    sget-object v2, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 639
    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->NONE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    const-string v1, "OVERRIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->OVERRIDE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    new-instance v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    const-string v1, "RESTORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    .line 638
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->$values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

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

    .line 638
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 638
    const-class v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;
    .locals 1

    .line 638
    sget-object v0, Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->$VALUES:[Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/PhoneSwitcherForMultiSim$RequestOverride$State;

    return-object v0
.end method
