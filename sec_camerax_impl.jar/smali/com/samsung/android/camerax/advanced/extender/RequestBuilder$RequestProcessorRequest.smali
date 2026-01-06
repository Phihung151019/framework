.class public Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestProcessorRequest"
.end annotation


# instance fields
.field private final mCaptureStageId:I

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetOutputConfigIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemplateId:I


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Map;II)V
    .locals 1
    .param p3, "templateId"    # I
    .param p4, "captureStageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 195
    .local p1, "targetOutputConfigIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mTargetOutputConfigIds:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mParameters:Ljava/util/Map;

    .line 198
    iput p3, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mTemplateId:I

    .line 199
    iput p4, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mCaptureStageId:I

    .line 200
    return-void
.end method


# virtual methods
.method public getCaptureStageId()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mCaptureStageId:I

    return v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getTargetOutputConfigIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mTargetOutputConfigIds:Ljava/util/List;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/Integer;
    .locals 1

    .line 217
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->mTemplateId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
