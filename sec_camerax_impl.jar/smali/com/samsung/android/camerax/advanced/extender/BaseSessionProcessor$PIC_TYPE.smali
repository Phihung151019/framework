.class public final enum Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
.super Ljava/lang/Enum;
.source "BaseSessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PIC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

.field public static final enum POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

.field public static final enum RAW_FIFTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

.field public static final enum RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

.field public static final enum RAW_FOURTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

.field public static final enum RAW_SECOND:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

.field public static final enum RAW_THIRD:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

.field public static final enum YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
    .locals 7

    .line 166
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_SECOND:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_THIRD:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v4, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FOURTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v5, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIFTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    sget-object v6, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 167
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    const-string v1, "YUV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 168
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    const-string v1, "RAW_FIRST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIRST:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 169
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    const-string v1, "RAW_SECOND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_SECOND:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 170
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    const-string v1, "RAW_THIRD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_THIRD:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 171
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    const-string v1, "RAW_FOURTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FOURTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 172
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    const-string v1, "RAW_FIFTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->RAW_FIFTH:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 173
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    const-string v1, "POSTVIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 166
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->$values()[Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->$VALUES:[Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

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

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
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

    .line 166
    const-class v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
    .locals 1

    .line 166
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->$VALUES:[Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    return-object v0
.end method
