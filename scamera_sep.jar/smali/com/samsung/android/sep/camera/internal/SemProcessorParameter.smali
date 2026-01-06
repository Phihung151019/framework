.class public Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
.super Ljava/lang/Object;
.source "SemProcessorParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "client_mode"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 14
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "single_capture"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 17
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "beauty_parameter"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 20
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "photo_hdr"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 23
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "image_format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 26
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "hdr_enable"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 29
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    const-string v1, "night_enable"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    .local p0, "this":Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;, "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    .local p0, "this":Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;, "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->mName:Ljava/lang/String;

    return-object v0
.end method
