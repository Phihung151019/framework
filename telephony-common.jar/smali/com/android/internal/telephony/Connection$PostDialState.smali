.class public final enum Lcom/android/internal/telephony/Connection$PostDialState;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostDialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/Connection$PostDialState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum greylist CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum greylist COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum greylist NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum blacklist PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum greylist STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum greylist WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum greylist WILD:Lcom/android/internal/telephony/Connection$PostDialState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 7

    .line 937
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v5, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    filled-new-array/range {v0 .. v6}, [Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 938
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 942
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 944
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "WAIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 947
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "WILD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 950
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "COMPLETE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 952
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 955
    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "PAUSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 937
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->$values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->$VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

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

    .line 937
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 937
    const-class v0, Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection$PostDialState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .line 937
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->$VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Connection$PostDialState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method
