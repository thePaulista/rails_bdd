      it "renders new template" do
        expect(reponse).to render_template :new
      end

      it "assigns readers to be readers" do
        expect(assigns[:reader]).to eq(reader)  #assign reader to be @reader
      end

      it "assigns error flash message" do
        expect(flash[:error]).not_to be_nil
      end
    end
  end
end
