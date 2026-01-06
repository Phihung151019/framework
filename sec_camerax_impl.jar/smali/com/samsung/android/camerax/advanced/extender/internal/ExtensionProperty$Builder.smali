.class public Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;
.super Ljava/lang/Object;
.source "ExtensionProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExtensionId:I

.field private mHdrMode:I

.field private mLightConditionMode:I

.field private mMaxCaptureCount:I

.field private mMaxPreviewCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "extensionId"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mMaxPreviewCount:I

    .line 78
    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mMaxCaptureCount:I

    .line 79
    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mHdrMode:I

    .line 80
    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mLightConditionMode:I

    .line 84
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mExtensionId:I

    .line 85
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;
    .locals 7

    .line 113
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mExtensionId:I

    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mMaxPreviewCount:I

    iget v3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mMaxCaptureCount:I

    iget v4, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mHdrMode:I

    iget v5, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mLightConditionMode:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;-><init>(IIIIILcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty-IA;)V

    return-object v0
.end method

.method public setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;
    .locals 0
    .param p1, "hdrMode"    # I

    .line 101
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mHdrMode:I

    .line 102
    return-object p0
.end method

.method public setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;
    .locals 0
    .param p1, "lightConditionMode"    # I

    .line 107
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mLightConditionMode:I

    .line 108
    return-object p0
.end method

.method public setMaxCaptureCount(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;
    .locals 0
    .param p1, "maxCaptureCount"    # I

    .line 95
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mMaxCaptureCount:I

    .line 96
    return-object p0
.end method

.method public setMaxPreviewCount(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;
    .locals 0
    .param p1, "maxPreviewCount"    # I

    .line 89
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->mMaxPreviewCount:I

    .line 90
    return-object p0
.end method
