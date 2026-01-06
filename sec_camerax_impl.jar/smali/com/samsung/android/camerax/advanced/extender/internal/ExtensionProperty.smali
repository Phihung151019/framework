.class public Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;
.super Ljava/lang/Object;
.source "ExtensionProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExtensionId:I

.field private final mHdrMode:I

.field private final mLightConditionMode:I

.field private final mMaxCaptureCount:I

.field private final mMaxPreviewCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0
    .param p1, "extensionId"    # I
    .param p2, "previewCount"    # I
    .param p3, "captureCount"    # I
    .param p4, "hdrMode"    # I
    .param p5, "lightConditionMode"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mExtensionId:I

    .line 38
    iput p2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mMaxPreviewCount:I

    .line 39
    iput p3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mMaxCaptureCount:I

    .line 40
    iput p4, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mHdrMode:I

    .line 41
    iput p5, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mLightConditionMode:I

    .line 42
    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getExtensionId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mExtensionId:I

    return v0
.end method

.method public getHdrMode()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mHdrMode:I

    return v0
.end method

.method public getLightConditionMode()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mLightConditionMode:I

    return v0
.end method

.method public getMaxCaptureCount()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mMaxCaptureCount:I

    return v0
.end method

.method public getMaxPreviewCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mMaxPreviewCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionProperty{ExtensionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mExtensionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MaxPreviewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mMaxPreviewCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MaxCaptureCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mMaxCaptureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HdrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mHdrMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LightConditionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->mLightConditionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
