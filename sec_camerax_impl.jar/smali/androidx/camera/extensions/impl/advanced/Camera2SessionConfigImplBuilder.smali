.class public Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
.super Ljava/lang/Object;
.source "Camera2SessionConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;
    }
.end annotation


# instance fields
.field mCamera2OutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mColorSpace:I

.field mSessionParameters:Ljava/util/Map;
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

.field private mSessionTemplateId:I

.field private mSessionType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionTemplateId:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mColorSpace:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionType:I

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionParameters:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    .locals 1
    .param p1, "outputConfig"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 50
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object p0
.end method

.method public addSessionParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)",
            "Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;"
        }
    .end annotation

    .line 60
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0
.end method

.method public build()Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .locals 1

    .line 133
    new-instance v0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;

    invoke-direct {v0, p0}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;-><init>(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V

    return-object v0
.end method

.method public getCamera2OutputConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getColorSpace()I
    .locals 1

    .line 95
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mColorSpace:I

    return v0
.end method

.method public getSessionParameters()Ljava/util/Map;
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

    .line 110
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionTemplateId()I
    .locals 1

    .line 102
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionTemplateId:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 125
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionType:I

    return v0
.end method

.method public setColorSpace(I)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    .locals 0
    .param p1, "colorSpace"    # I

    .line 87
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mColorSpace:I

    .line 88
    return-object p0
.end method

.method public setSessionTemplateId(I)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    .locals 0
    .param p1, "templateId"    # I

    .line 69
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionTemplateId:I

    .line 70
    return-object p0
.end method

.method public setSessionType(I)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    .locals 0
    .param p1, "sessionType"    # I

    .line 78
    iput p1, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->mSessionType:I

    .line 79
    return-object p0
.end method
