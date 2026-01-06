.class public Lcom/samsung/android/camerax/advanced/extender/internal/Quirks;
.super Ljava/lang/Object;
.source "Quirks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/internal/Quirks$StreamOption;
    }
.end annotation


# static fields
.field public static final STREAM_OPTION_DEPTH:I = 0x8

.field public static final STREAM_OPTION_DUMMY:I = 0x400

.field public static final STREAM_OPTION_EXTRA_PREVIEW:I = 0x80

.field public static final STREAM_OPTION_HIGH_RES_DRAFT_JPEG:I = 0x800

.field public static final STREAM_OPTION_IRIS:I = 0x10

.field public static final STREAM_OPTION_NONE:I = 0x0

.field public static final STREAM_OPTION_PHYSICAL_ID_BIT_SHIFT_CNT:I = 0x10

.field public static final STREAM_OPTION_PICTURE:I = 0x2

.field public static final STREAM_OPTION_PREVIEW:I = 0x1

.field public static final STREAM_OPTION_RECORD:I = 0x40

.field public static final STREAM_OPTION_SIBLING:I = 0x200

.field public static final STREAM_OPTION_STITCHING:I = 0x20

.field public static final STREAM_OPTION_SUB:I = 0x100

.field public static final STREAM_OPTION_THUMBNAIL:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static applyStreamOption(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .locals 1
    .param p0, "configBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    .param p1, "option"    # I

    .line 89
    invoke-virtual {p0, p1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->setSurfaceGroupId(I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method
