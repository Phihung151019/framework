.class public final enum Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
.super Ljava/lang/Enum;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum ACTIVE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum ALERTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum DIALING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum DISCONNECTED:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum DISCONNECTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum HOLDING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum IDLE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum INCOMING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum WAITING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    .locals 9

    .line 1606
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->IDLE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->ACTIVE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->HOLDING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DIALING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v4, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->ALERTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->INCOMING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->WAITING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v7, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DISCONNECTED:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    sget-object v8, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DISCONNECTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1610
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->IDLE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1614
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->ACTIVE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1618
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "HOLDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->HOLDING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1622
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "DIALING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DIALING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1626
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "ALERTING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->ALERTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1630
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "INCOMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->INCOMING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1634
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "WAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->WAITING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1638
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DISCONNECTED:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1642
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "DISCONNECTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DISCONNECTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1606
    invoke-static {}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->$values()[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->$VALUES:[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .line 1606
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
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

    .line 1606
    const-class v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    .locals 1

    .line 1606
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->$VALUES:[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    invoke-virtual {v0}, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    return-object v0
.end method
