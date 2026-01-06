.class public final enum Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;
.super Ljava/lang/Enum;
.source "PreviewExtenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/PreviewExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

.field public static final enum PROCESSOR_TYPE_IMAGE_PROCESSOR:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

.field public static final enum PROCESSOR_TYPE_NONE:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

.field public static final enum PROCESSOR_TYPE_REQUEST_UPDATE_ONLY:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;


# direct methods
.method private static synthetic $values()[Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;
    .locals 3

    .line 37
    sget-object v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_REQUEST_UPDATE_ONLY:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    sget-object v1, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_IMAGE_PROCESSOR:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    sget-object v2, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_NONE:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    filled-new-array {v0, v1, v2}, [Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    const-string v1, "PROCESSOR_TYPE_REQUEST_UPDATE_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_REQUEST_UPDATE_ONLY:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    .line 41
    new-instance v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    const-string v1, "PROCESSOR_TYPE_IMAGE_PROCESSOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_IMAGE_PROCESSOR:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    .line 43
    new-instance v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    const-string v1, "PROCESSOR_TYPE_NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->PROCESSOR_TYPE_NONE:Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    .line 37
    invoke-static {}, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->$values()[Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->$VALUES:[Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;
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

    .line 37
    const-class v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    return-object v0
.end method

.method public static values()[Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;
    .locals 1

    .line 37
    sget-object v0, Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->$VALUES:[Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    invoke-virtual {v0}, [Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/extensions/impl/PreviewExtenderImpl$ProcessorType;

    return-object v0
.end method
