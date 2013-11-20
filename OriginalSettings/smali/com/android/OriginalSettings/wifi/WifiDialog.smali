.class Lcom/android/OriginalSettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mCWError:I

.field private mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mRetry:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    .line 62
    const v0, 0x7f10002a

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mCWError:I

    .line 63
    iput-boolean p4, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEdit:Z

    .line 64
    iput-boolean p5, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mRetry:Z

    .line 65
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 67
    return-void
.end method


# virtual methods
.method public dismissSpinnerPopup()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b01a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 92
    .local v0, layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0344

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 98
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0383

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 99
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 100
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 101
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0389

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b038a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b038d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b038e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 110
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b038f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 113
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 114
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0394

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0371

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 117
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0373

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0379

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 121
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 122
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b037a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 124
    :cond_6
    return-void
.end method

.method public getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 82
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mRetry:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiConfigController;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    .line 84
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 88
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 158
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 153
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 148
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    return-void
.end method
