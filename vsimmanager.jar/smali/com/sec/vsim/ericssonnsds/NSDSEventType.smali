.class public final enum Lcom/sec/vsim/ericssonnsds/NSDSEventType;
.super Ljava/lang/Enum;
.source "NSDSEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/vsim/ericssonnsds/NSDSEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum ENTITLEMENT_CHECK_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum LOC_AND_TC_UPDATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum LOC_AND_TC_WEBSHEET_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum LOC_AND_TC_WEBSHEET_LAUNCHED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum SIM_DEVICE_ACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

.field public static final enum SIM_DEVICE_DEACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;


# direct methods
.method private static synthetic $values()[Lcom/sec/vsim/ericssonnsds/NSDSEventType;
    .locals 6

    .line 3
    sget-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->SIM_DEVICE_ACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    sget-object v1, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->SIM_DEVICE_DEACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    sget-object v2, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_UPDATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    sget-object v3, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->ENTITLEMENT_CHECK_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    sget-object v4, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_WEBSHEET_LAUNCHED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    sget-object v5, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_WEBSHEET_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v1, "SIM_DEVICE_ACTIVATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->SIM_DEVICE_ACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 12
    new-instance v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v1, "SIM_DEVICE_DEACTIVATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->SIM_DEVICE_DEACTIVATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 17
    new-instance v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v1, "LOC_AND_TC_UPDATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_UPDATED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 22
    new-instance v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v1, "ENTITLEMENT_CHECK_COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->ENTITLEMENT_CHECK_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 27
    new-instance v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v1, "LOC_AND_TC_WEBSHEET_LAUNCHED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_WEBSHEET_LAUNCHED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 32
    new-instance v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    const-string v1, "LOC_AND_TC_WEBSHEET_COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->LOC_AND_TC_WEBSHEET_COMPLETED:Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    .line 3
    invoke-static {}, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->$values()[Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->$VALUES:[Lcom/sec/vsim/ericssonnsds/NSDSEventType;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/vsim/ericssonnsds/NSDSEventType;
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

    .line 3
    const-class v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    return-object v0
.end method

.method public static values()[Lcom/sec/vsim/ericssonnsds/NSDSEventType;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/vsim/ericssonnsds/NSDSEventType;->$VALUES:[Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    invoke-virtual {v0}, [Lcom/sec/vsim/ericssonnsds/NSDSEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/vsim/ericssonnsds/NSDSEventType;

    return-object v0
.end method
