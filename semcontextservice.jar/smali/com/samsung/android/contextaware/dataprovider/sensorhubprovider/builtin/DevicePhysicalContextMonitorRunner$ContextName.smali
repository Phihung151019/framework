.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
.super Ljava/lang/Enum;
.source "DevicePhysicalContextMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum AODLux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

.field public static final enum VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;


# instance fields
.field private val:B


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
    .locals 7

    .line 47
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODLux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;)B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string v1, "AODStatus"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    .line 51
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string v1, "VersionYear"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionYear:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    .line 52
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string v1, "VersionMonth"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionMonth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    .line 53
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string v1, "VersionDay"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionDay:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    .line 54
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string v1, "VersionRevision"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->VersionRevision:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    .line 55
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string v1, "AODReason"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODReason:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    .line 56
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    const-string v1, "AODLux"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->AODLux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    .line 47
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->$values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

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

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->val:B

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
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

    .line 47
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;
    .locals 1

    .line 47
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DevicePhysicalContextMonitorRunner$ContextName;

    return-object v0
.end method
