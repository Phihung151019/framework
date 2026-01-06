.class public final enum Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;
.super Ljava/lang/Enum;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VmVideoOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_REVERSE_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

.field public static final enum VM_ORIENTATION_REVERSE_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;


# instance fields
.field private final mOrientationValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const-string v1, "VM_ORIENTATION_LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    .line 60
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const-string v3, "VM_ORIENTATION_PORTRAIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    .line 61
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const/4 v1, 0x2

    const/16 v2, 0xb4

    const-string v3, "VM_ORIENTATION_REVERSE_LANDSCAPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    .line 62
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const/4 v1, 0x3

    const/16 v2, 0x10e

    const-string v3, "VM_ORIENTATION_REVERSE_PORTRAIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    .line 58
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    sget-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    sget-object v2, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_LANDSCAPE:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    sget-object v3, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->VM_ORIENTATION_REVERSE_PORTRAIT:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->mOrientationValue:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;
    .locals 1

    .line 1
    const-class v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;->mOrientationValue:I

    return v0
.end method
