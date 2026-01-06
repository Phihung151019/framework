.class public Lcom/sec/vsim/ericssonnsds/data/ResponseCancelMsisdnAuth;
.super Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;
.source "ResponseCancelMsisdnAuth.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseCancelMsisdnAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseCancelMsisdnAuth$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseCancelMsisdnAuth$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseCancelMsisdnAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;-><init>(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseCancelMsisdnAuth;->statusMessage:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 21
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 22
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseCancelMsisdnAuth;->statusMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    return-void
.end method
