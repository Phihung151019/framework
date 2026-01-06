.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;
.super Ljava/lang/Enum;
.source "EADRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum B:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum CCT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum G:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum Lux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum R:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;


# instance fields
.field private val:B


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;
    .locals 5

    .line 44
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->R:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->G:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->B:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->Lux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->CCT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;)B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->val:B

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "R"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->R:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 48
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "G"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->G:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 49
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "B"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->B:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 50
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "Lux"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->Lux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 51
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "CCT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->CCT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 44
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->$values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->val:B

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;
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

    .line 44
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    return-object v0
.end method
