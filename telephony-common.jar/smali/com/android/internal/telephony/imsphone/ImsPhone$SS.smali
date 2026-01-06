.class public Lcom/android/internal/telephony/imsphone/ImsPhone$SS;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SS"
.end annotation


# instance fields
.field blacklist mCfAction:I

.field blacklist mCfReason:I

.field blacklist mClirMode:I

.field blacklist mDialingNumber:Ljava/lang/String;

.field blacklist mEnable:Z

.field blacklist mFacility:Ljava/lang/String;

.field blacklist mLockState:Z

.field public blacklist mOnComplete:Landroid/os/Message;

.field blacklist mPassword:Ljava/lang/String;

.field blacklist mServiceClass:I

.field blacklist mTimerSeconds:I


# direct methods
.method constructor blacklist <init>(IILandroid/os/Message;)V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    .line 470
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 471
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfAction:I

    .line 478
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    .line 479
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mDialingNumber:Ljava/lang/String;

    .line 480
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 481
    iput p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mTimerSeconds:I

    .line 482
    iput-object p6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Message;)V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mClirMode:I

    .line 457
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Message;)V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    .line 488
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    .line 489
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 490
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    .line 497
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mLockState:Z

    .line 498
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    .line 499
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 500
    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor blacklist <init>(ZILandroid/os/Message;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mEnable:Z

    .line 463
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 464
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    return-void
.end method
