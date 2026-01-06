.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;
.super Ljava/lang/Enum;
.source "SensorStatusCheckRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

.field public static final enum Status:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

.field public static final enum XAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

.field public static final enum YAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

.field public static final enum ZAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;


# instance fields
.field private val:B


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;
    .locals 4

    .line 42
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->Status:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->XAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->YAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->ZAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;)B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->val:B

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    const-string v1, "Status"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->Status:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    .line 46
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    const-string v1, "XAxis"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->XAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    const-string v1, "YAxis"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->YAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    .line 48
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    const-string v1, "ZAxis"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->ZAxis:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    .line 42
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->$values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "v"    # B
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
            "(B)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->val:B

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;
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

    .line 42
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;
    .locals 1

    .line 42
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SensorStatusCheckRunner$ContextName;

    return-object v0
.end method
