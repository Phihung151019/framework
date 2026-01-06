.class final enum Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
.super Ljava/lang/Enum;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Msg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;


# instance fields
.field private final val:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    .locals 3

    .line 40
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const/4 v1, 0x0

    const-string v2, "MSG_IDLE"

    const-string v3, "IDLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    .line 44
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const/4 v1, 0x1

    const-string v2, "MSG_INCOMING_RINGING"

    const-string v3, "INCOMING_RINGING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    .line 45
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const/4 v1, 0x2

    const-string v2, "MSG_OFF_HOOK"

    const-string v3, "OFF_HOOK"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    .line 40
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->$values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->val:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-object v0
.end method
