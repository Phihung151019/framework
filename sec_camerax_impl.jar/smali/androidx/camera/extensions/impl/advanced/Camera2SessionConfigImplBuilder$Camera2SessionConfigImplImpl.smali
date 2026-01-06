.class Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;
.super Ljava/lang/Object;
.source "Camera2SessionConfigImplBuilder.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Camera2SessionConfigImplImpl"
.end annotation


# instance fields
.field private final mCamera2OutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorSpace:I

.field private final mSessionParameters:Ljava/util/Map;
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

.field private final mSessionTemplateId:I

.field private final mSessionType:I


# direct methods
.method constructor <init>(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->getSessionTemplateId()I

    move-result v0

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mSessionTemplateId:I

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->getSessionParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mSessionParameters:Ljava/util/Map;

    .line 147
    invoke-virtual {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->getColorSpace()I

    move-result v0

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mColorSpace:I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->getCamera2OutputConfigs()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mCamera2OutputConfigs:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->getSessionType()I

    move-result v0

    iput v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mSessionType:I

    .line 150
    return-void
.end method


# virtual methods
.method public getColorSpace()I
    .locals 1

    .line 176
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mColorSpace:I

    return v0
.end method

.method public getOutputConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mCamera2OutputConfigs:Ljava/util/List;

    return-object v0
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

    .line 161
    iget-object v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mSessionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionTemplateId()I
    .locals 1

    .line 166
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mSessionTemplateId:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 171
    iget v0, p0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder$Camera2SessionConfigImplImpl;->mSessionType:I

    return v0
.end method
