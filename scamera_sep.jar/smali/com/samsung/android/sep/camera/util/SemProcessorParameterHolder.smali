.class public Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;
.super Ljava/lang/Object;
.source "SemProcessorParameterHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mParamSettings:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 17
    .local p0, "this":Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;, "Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const/4 v2, 0x0

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 23
    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 21
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 26
    nop

    .line 24
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 30
    nop

    .line 28
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public getParamSettings()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;, "Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;, "Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder<TT;>;"
    .local p1, "parameter":Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;, "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setParamSetting(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;, "Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder<TT;>;"
    .local p1, "parameter":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->mParamSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
