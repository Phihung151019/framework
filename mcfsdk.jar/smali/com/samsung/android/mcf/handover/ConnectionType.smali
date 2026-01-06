.class public final enum Lcom/samsung/android/mcf/handover/ConnectionType;
.super Ljava/lang/Enum;
.source "ConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mcf/handover/ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum DO_NOT_CARE:Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/mcf/handover/ConnectionType;
    .locals 4

    .line 9
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    sget-object v1, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    sget-object v2, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;

    sget-object v3, Lcom/samsung/android/mcf/handover/ConnectionType;->DO_NOT_CARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/mcf/handover/ConnectionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const/4 v1, 0x0

    const-string v2, "Connection type NONE"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 17
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const/4 v1, 0x1

    const-string v2, "Wifi Aware"

    const-string v3, "WIFI_AWARE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 21
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const/4 v1, 0x2

    const-string v2, "Wifi Direct"

    const-string v3, "WIFI_DIRECT"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 25
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const/16 v1, 0x1000

    const-string v2, "MCF select network type"

    const-string v3, "DO_NOT_CARE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->DO_NOT_CARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 9
    invoke-static {}, Lcom/samsung/android/mcf/handover/ConnectionType;->$values()[Lcom/samsung/android/mcf/handover/ConnectionType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->$VALUES:[Lcom/samsung/android/mcf/handover/ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->value:I

    .line 38
    iput-object p4, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->description:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/mcf/handover/ConnectionType;
    .locals 1
    .param p0, "value"    # I

    .line 49
    packed-switch p0, :pswitch_data_0

    .line 57
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->DO_NOT_CARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object v0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object v0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object v0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mcf/handover/ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/mcf/handover/ConnectionType;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->$VALUES:[Lcom/samsung/android/mcf/handover/ConnectionType;

    invoke-virtual {v0}, [Lcom/samsung/android/mcf/handover/ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->description:Ljava/lang/String;

    return-object v0
.end method
